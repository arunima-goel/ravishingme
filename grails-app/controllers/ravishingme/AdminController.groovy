package ravishingme

import grails.converters.JSON
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.scribe.model.Token
import org.ravishingme.Profile

class AdminController {
	def oauthService
	def userService
	def facebookService

	def index() {
		SecUser loggedInUser = getLoggedInUser();
		SecRole role = SecRole.findByAuthority("ROLE_ADMIN")
		if(SecUserSecRole.exists(loggedInUser.id, role.id)) {
			println("User " + loggedInUser.getUsername() + " is an admin user")
		} else {
			println("User " + loggedInUser.getUsername() + " is not an admin user")
			redirect(uri: "/")
		}

	}
	
	def getUserProfile() {
		log.info("Getting user by username: " + params.username)
		SecUser loggedInUser = getLoggedInUser();
		SecRole role = SecRole.findByAuthority("ROLE_ADMIN")
		if(SecUserSecRole.exists(loggedInUser.id, role.id)) {
			Profile profileInstance = Profile.findByUsername(params.username);
			log.info("Got user: " + profileInstance.servicesOffered);
			render(template:'/admin/profileInfo', model: [profile: profileInstance])
		} else {
			println("User " + loggedInUser.getUsername() + " is not an admin user")
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