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
	def commonService

	/**
	 * Landing page
	 */
	def index() {
		SecUser loggedInUser = getLoggedInUser();
		commonService.logEndpointCallEntry("UserController: index()", loggedInUser, null);
		render(view:'/index', model: [loggedInUser: loggedInUser]);
		commonService.logEndpointCallExit("UserController: index()", loggedInUser);
	}

	/**
	 * Helper method to get logged in user
	 */
	def getLoggedInUser() {
		log.info("Getting logged in user");
		SecUser loggedInUser = null;
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')];
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me");
			loggedInUser = userService.findUserByUserId(userid);
		} catch (CustomException ce) {
			log.info("Error getting logged in user: " + ce.getErrorMessage());
		}
		return loggedInUser;
	}

	/**
	 * Callback from facebook when login is successful
	 */
	def loginSuccess() {
		log.info("Facebook login was successful - begin");
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me")

			// Create the user in our database
			if (!SecUser.findByUserid(userid)) {
				userService.createUser(name, userid)
			}

			// Get the user and redirect to the profile of the user
			SecUser user = SecUser.findByUserid(userid)
			redirect(controller: "profile", action: "index", params:[username: user.profile.getUsername()])
		} catch (Exception e) {
			log.error("An exception occurred after successful facebook login" + e.getMessage());
			flash.error = "An exception occurred during facebook login. Please try again.";
			logout();
		}
		log.info("Facebook login was successful - end");
	}


	def loginError() {
		flash.error = "Error."
		render view: '/index'
	}

	def logout() {
		log.info("logging out")
		if (session[oauthService.findSessionKeyForAccessToken('facebook')]) {
			session[oauthService.findSessionKeyForAccessToken('facebook')] = null;
			flash.message = "Token revoked successfully.";
			log.info("token revoked successfully");
		}
		redirect (uri: "/");
	}

	def error() {
		render params
	}
}