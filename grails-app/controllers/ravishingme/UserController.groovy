package ravishingme

import grails.converters.JSON

import org.ravishingme.Profile;
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.scribe.model.Token

class UserController {
	def oauthService
	def facebookService
	def userService

	/**
	 * Landing page
	 */
	def index() {
		log.info("index() - begin - params [" + params + "]");
		SecUser loggedInUser = getLoggedInUser();
		render(view:'/index', model: [loggedInUser: loggedInUser]);
		log.info("index() - end - Logged in user [" + loggedInUser + "]");
	}

	/**
	 * Helper method to get logged in user
	 */
	def getLoggedInUser() {
		log.info("getLoggedInUser() - begin");
		SecUser loggedInUser = null;
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')];
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me");
			loggedInUser = userService.findUserByUserId(userid);
		} catch (CustomException ce) {
			log.info("Error getting logged in user: " + ce.getErrorMessage());
		}
		log.info("getLoggedInUser() - end - Logged in user [" + loggedInUser + "]");
		return loggedInUser;
	}

	/**
	 * Callback from facebook when login is successful
	 */
	def loginSuccess() {
		log.info("loginSuccess() - begin - params [" + params + "]");
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
			log.error("An exception occurred after successful facebook login " + e.getMessage());
			flash.error = "An exception occurred during facebook login. Please try again.";
			logout();
		}
		log.info("loginSuccess() - end");
	}

	/**
	 * Callback from facebook when login is not successful
	 */
	def loginError() {
		log.info("loginError() - begin - params [" + params + "]");
		flash.error = "Facebook login was unsuccessful. Please try again.";
		logout();
		log.info("loginError() - end");
	}

	/**
	 * Endpoint to logout the currently logged in user
	 */
	def logout() {
		log.info("logout() - begin params [" + params + "]");
		if (session[oauthService.findSessionKeyForAccessToken('facebook')]) {
			session[oauthService.findSessionKeyForAccessToken('facebook')] = null;
			flash.message = "Token revoked successfully.";
			log.info("token revoked successfully");
		}
		redirect (uri: "/");
		log.info("logout() - end")	;	
	}

}