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

class ProfileController {

	def oauthService
	def facebookService

	def update() {
		log.info("Updating profile: " + params);

		def profileInstance = Profile.get(params.id);

		// ***deselected values don't get saved if we don't clear the values here
		if (profileInstance.getIsArtist()) {
			profileInstance.cosmeticBrands.clear();
		} else {
			profileInstance.preferredCosmeticBrands.clear();
			profileInstance.preferredServices.clear();
		}

		bindData profileInstance, params;

		profileInstance.address.state = profileInstance.address.city.state;
		profileInstance.address.country = profileInstance.address.city.state.country;
		profileInstance.address.save(flush:true);
		profileInstance.save(flush:true);
		
		flash.info = "Successful profile update";
		render(template:'/admin/profileInfo', model: [profile: Profile.findByUsername(params.username)])
	}

	def index(String username) {
		log.info("Getting profile: " + username)
		try {
			def profile = Profile.findByUsername(username)
			if (profile) {
				// checkMinContent(username) // if logged in user is the same as the username,
				// then check min content and display edit page
				log.info("Profile about you: " + profile.aboutYou);
				def loggedInUser = getLoggedInUser();
				[profile:profile, loggedInUser: loggedInUser]
			} else {
				redirect(uri: "/")
			}

		} catch (Exception e) {
			flash.error = "Exception during profile index"
		}


	}

	def settings() {
		try {
			// checkMinContent(username) // if logged in user is the same as the username,
			// then check min content and display edit page
			def loggedInUser = getLoggedInUser();
			[loggedInUser: loggedInUser]
		} catch (Exception e) {
			flash.error = "Exception during profile index"
		}
	}

	def checkMinContent(String name) {
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
	}
}