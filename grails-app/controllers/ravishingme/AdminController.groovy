package ravishingme

import grails.converters.JSON
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.scribe.model.Token

class AdminController {
	def oauthService
	def userService
	def facebookService

	def index() {
		SecUser user = getLoggedInUser();
		SecRole role = SecRole.findByAuthority("ROLE_ADMIN")
		if(SecUserSecRole.exists(user.id, role.id)) {
			println("User " + user.getUsername() + " is an admin user")
		} else {
			println("User " + user.getUsername() + " is not an admin user")
			redirect(uri: "/")
		}

	}

	def getLoggedInUser() {
		log.info("Getting logged in user")
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me")
			log.info("Got logged in user")
			log.info("userId: " + userid + " name: " + name)
			return SecUser.findByUserid(userid)
		} catch (CustomException ce) {
			log.info("Error getting logged in user")
			flash.error = "Exception during login"
		}
	}

}