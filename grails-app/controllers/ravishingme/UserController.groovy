package ravishingme

import grails.converters.JSON

import org.ravishingme.Profile;
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.scribe.model.Token

class UserController {
	def oauthService
	def userService
	def facebookService

	def index() {
		log.info("Index in user controller");
		SecUser loggedInUser = getLoggedInUser();
		log.info("Got logged in user info: " + loggedInUser)
		render(view:'/index', model: [loggedInUser: loggedInUser]);
	}

	def getLoggedInUser() {
		log.info("Getting logged in user")
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me");
			return userService.findUserByUserId(userid);
		} catch (CustomException ce) {
			log.info("Error getting logged in user")
			flash.error = "Exception during login"
		}
		return null;
	}
	
	def loginSuccess() {
		log.info("Successful facebook login");
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me")
			log.info("userId: " + userid + " name: " + name)

			// Create the user in our database
			if (!SecUser.findByUserid(userid)) {
				userService.createUser(name, userid)
			}

			// Get the user and redirect to the profile of the user
			SecUser user = SecUser.findByUserid(userid)
			redirect(controller: "profile", action: "index", params:[username: user.profile.getUsername()])
		} catch (Exception e) {
			log.error(e.getMessage())
			flash.error = "Exception during login"
		}

	}
	

	def loginError() {
		flash.error = "Error."
		render view: '/index'
	}

	def logout() {
		log.info("logging out")
		if (params.id && session[oauthService.findSessionKeyForAccessToken(params.id)]) {
			session[oauthService.findSessionKeyForAccessToken(params.id)] = null
			flash.message = "Token revoked successfully."
			log.info("token revoked successfully")
		}
		redirect(uri: "/")
	}

	def error() {
		render params
	}
}