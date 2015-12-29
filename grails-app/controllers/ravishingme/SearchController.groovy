package ravishingme

import grails.converters.JSON

import org.ravishingme.Address;
import org.ravishingme.BusinessHours;
import org.ravishingme.City;
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.ravishingme.SocialNetworks;
import org.scribe.model.Token
import org.ravishingme.Profile

class SearchController {
	def oauthService
	def facebookService

	def index() {
		log.info("Searching: " + params);
		SecUser loggedInUser = getLoggedInUser();
		log.info("Got logged in user info: " + loggedInUser)
		[profiles: Profile.list(), loggedInUser: loggedInUser]
	}
	
	def searchLanding() {
		log.info("Searching: " + params);
//		SecUser loggedInUser = getLoggedInUser();
//		log.info("Got logged in user info: " + loggedInUser)
//		[profiles: Profile.list(), loggedInUser: loggedInUser]
		redirect (uri: "/search", mdoel: [params: params]);
	}

	def search() {
		log.info("Searching: " + params);
		SecUser loggedInUser = getLoggedInUser();
		log.info("Got logged in user info: " + loggedInUser)
		render(template:'/search/searchResults', model: [profiles: Profile.list()])
	}

	def getLoggedInUser() {
		log.info("Getting logged in user")
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me");
			SecUser loggedInUser = SecUser.findByUserid(userid);
			Profile loggedInUserProfile = Profile.findById(loggedInUser.profile.id);
			log.info("Got logged in user userId: " + userid + " name: " + name + " profile username: " + loggedInUser.profile.username)
			loggedInUser.profile = loggedInUserProfile;
			return loggedInUser;
		} catch (CustomException ce) {
			log.info("Error getting logged in user")
			flash.error = "Exception during login"
		}
		return null;
	}
}