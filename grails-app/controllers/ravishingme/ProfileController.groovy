package ravishingme

import javax.servlet.http.HttpServletResponse

import org.ravishingme.Profile
import org.ravishingme.SecUser
import org.scribe.model.Token

class ProfileController {

	def oauthService
	def facebookService
	def userService

	/**
	 * Endpoint to update settings of a profile
	 */
	def update() {
		log.info("update() - begin - params [" + params + "]");

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

		render(template:'/admin/profileInfo', model: [profile: Profile.findByUsername(params.username)])
		log.info("update() - end");
	}

	/**
	 * Endpoint to update settings
	 */
	def updateSettings() { // TODO: check where this is called?
		// TODO: get logged in user and compare the ID here - do not update if there is no
		log.info("updateSettings() - begin - params [" + params + "]");

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

		render status:HttpServletResponse.SC_NO_CONTENT
		log.info("updateSettings() - end");
	}

	/**
	 * Endpoint to get profile information by username
	 * @param username Username of the profile that needs to be fetched
	 * @return The profile with the given username
	 */
	def index(String username) {
		log.info("index() - begin - params [" + params + "] - username [" + username + "]");
		try {
			def profile = Profile.findByUsername(username)
			if (profile) {
				// TODO:  checkMinContent(username) // if logged in user is the same as the username,
				// then check min content and display edit page
				log.info("index() - end");
				[profile:profile, loggedInUser: getLoggedInUser()]
			} else {
				redirect(uri: "/")
				log.info("index() - end");
			}
		} catch (Exception e) {
			log.error("There was an error while fetching profile for user " + username + " " + e.getMessage());
			flash.error = "There was an error while fetching profile for user " + username;
			redirect(uri: "/")
			log.info("index() - end");
		}
	}

	/**
	 * Endpoint to get the settings of the currently logged in user
	 * @return Settings of the logged in user
	 */
	def settings() {
		log.info("settings() - begin - params [" + params + "]");
		try {
			// TODO: checkMinContent(username) // if logged in user is the same as the username,
			// then check min content and display edit page
			log.info("settings() - end");
			[loggedInUser: getLoggedInUser()]
		} catch (Exception e) {
			flash.error = "There was an error while fetching your settings. Please contact ravishing@ravishingme.com.";
			redirect(uri: "/")
			log.info("settings() - end");
		}
	}

	/**
	 * Helper method to check minimum content for a profile
	 * @param name
	 * @return
	 */
	def checkMinContent() {
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
	 * Endpoint to add a favorite
	 */
	def addFavorite() {
		log.info("addFavorite() - begin - params [" + params + "]");
		def favoriteProfileInstance = Profile.get(params.favoriteId)

		def loggedInUser = getLoggedInUser();
		def profileInstance = loggedInUser.profile;
		profileInstance.addToFavorites(favoriteProfileInstance)
		profileInstance.save(flush: true)
		render(template:'/profile/favoriteIcon', model: [profile:favoriteProfileInstance, loggedInUser: loggedInUser])
		log.info("addFavorite() - end");
	}

	/**
	 * Endpoint to remove a favorite
	 */
	def removeFavorite() {
		log.info("removeFavorite() - begin - params [" + params + "]");
		def favoriteProfileInstance = Profile.findById(params.favoriteId)

		def loggedInUser = getLoggedInUser();
		def profileInstance = loggedInUser.profile;
		profileInstance.removeFromFavorites(favoriteProfileInstance)
		profileInstance.save(flush: true)
		render(template:'/profile/favoriteIcon', model: [profile:favoriteProfileInstance, loggedInUser: loggedInUser])
		log.info("removeFavorite() - end");
	}

	/**
	 * Endpoint to remove a favorite
	 */
	def removeFavoriteFromSettings() { //TODO: check exactly where this is called from
		log.info("removeFavoriteFromSettings() - begin - params [" + params + "]");
		def favoriteProfileInstance = Profile.findById(params.favoriteId)

		def loggedInUser = getLoggedInUser();
		def profileInstance = loggedInUser.profile;
		profileInstance.removeFromFavorites(favoriteProfileInstance)
		profileInstance.save(flush: true)
		render(template:'/profile/favoritesSettings', model: [profile:favoriteProfileInstance, loggedInUser: getLoggedInUser()])
		log.info("removeFavoriteFromSettings() - end");
	}
}