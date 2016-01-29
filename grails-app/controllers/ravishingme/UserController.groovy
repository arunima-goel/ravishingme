package ravishingme

import javax.servlet.http.HttpServletResponse;

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
			def (userid, name, email) = facebookService.getUserIdAndName(facebookAccessToken, "me?fields=email,name")

			boolean newUserCreated = false;
			// Create the user in our database
			if (!SecUser.findByUserid(userid)) {
				def user = userService.createUser(name, userid, email)
				fetchAndSaveProfileAndCoverPics(user.username, userid, facebookAccessToken);
				newUserCreated = true;
			}

			// Get the user and redirect to the profile of the user
			SecUser user = SecUser.findByUserid(userid)
			if (newUserCreated) {
				redirect(uri: "/profile/settings")
			} else {
				redirect(uri: params.redirectUri)
			}
		} catch (Exception e) {
			log.error("An exception occurred after successful facebook login " + e.getMessage());
			flash.error = "An exception occurred during facebook login. Please try again.";
			logout();
		}
		log.info("loginSuccess() - end");
	}

	/**
	 * Fetch profile and cover pics from facebook and save them in S3
	 */
	private fetchAndSaveProfileAndCoverPics(String username, String userid, Token facebookAccessToken) {
		try {
			// Fetch facebook profile and cover pics
			def profilePicPath = "profile/" + username + "/profilePicture/";
			def coverPicPath = "profile/" + username + "/coverPicture/";

			def (largeProfilePicUrl) = facebookService.getProfileImage(facebookAccessToken, userid, "large")
			def uploadedFile = new URL(largeProfilePicUrl).openStream().s3upload("profile-large.jpeg") {
				path profilePicPath
			}

			// Commenting out so that it can be reinstated later if needed
//			def (coverPicUrl) = facebookService.getCoverImage(facebookAccessToken, userid)
//			uploadedFile = new URL(coverPicUrl).openStream().s3upload("cover.jpeg") {
//				path coverPicPath
//			}
		} catch(Exception e) {
			log.error("Could not fetch profile and cover pictures from facebook: " + e.getMessage());
		}
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
		if (params.redirectUri != null && params.redirectUri != "" && !params.redirectUri.contains("settings")) {
			log.info("Redirecting to URI [" + params.redirectUri + "]");
			redirect(uri: params.redirectUri);
		} else {
			redirect (uri: "/");
		}
		log.info("logout() - end");
	}

	/**
	 * Endpoint to send an email
	 * Adding this here to avoid creating another controller with the getLoggedInUser method
	 */
	def sendEmail() {
		log.info("sendEmail() - begin params [" + params + "]");
		try {
			sesMail {
				to params.toEmailAddress
				cc "ravishingdotme@gmail.com", params.fromEmailAddress
				subject "You have received a new inquiry from " + params.fromEmailName + "!"
				body params.emailMessage
			}
		} catch (Exception e) {
			log.error("An error occurred while sending the an email with params [" + params + "] with exception [" + e + "]");
			render status: HttpServletResponse.SC_INTERNAL_SERVER_ERROR 

		}
		render status:HttpServletResponse.SC_NO_CONTENT
		log.info("sendEmail() - end");
	}

}