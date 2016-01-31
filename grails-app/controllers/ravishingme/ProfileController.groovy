package ravishingme

import javax.servlet.http.HttpServletResponse

import org.apache.commons.lang.StringUtils;
import org.ravishingme.Profile;
import org.ravishingme.SecRole;
import org.ravishingme.SecUser;
import org.ravishingme.SecUserSecRole;
import org.scribe.model.Token;

import java.sql.Timestamp;

class ProfileController {

	def oauthService
	def facebookService
	def userService
	def aws


	/**
	 * Endpoint to update settings of a profile
	 */
	def update() {
		log.info("update() - begin - params [" + params + "]");

		def profileInstance = Profile.get(params.id);

		SecUser loggedInUser = getLoggedInUser();
		SecRole role = SecRole.findByAuthority("ROLE_ADMIN");
		if(SecUserSecRole.exists(loggedInUser.id, role.id)) {
			log.info("Saving profile");
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

		}
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

		// Add http:// prefix to social network urls if they don't already have it
		if (params.socialNetworks) {
			String facebookUrl = params.socialNetworks.facebookUrl;
			if(StringUtils.isNotBlank(facebookUrl) && !facebookUrl.startsWith("http")) {
				params.socialNetworks.facebookUrl = "http://" + facebookUrl;
			}

			String twitterUrl = params.socialNetworks.twitterUrl;
			if(StringUtils.isNotBlank(twitterUrl) && !twitterUrl.startsWith("http")) {
				params.socialNetworks.twitterUrl = "http://" + twitterUrl;
			}

			String instagramUrl = params.socialNetworks.instagramUrl;
			if(StringUtils.isNotBlank(instagramUrl) && !instagramUrl.startsWith("http")) {
				params.socialNetworks.instagramUrl = "http://" + instagramUrl;
			}

			String youtubeUrl = params.socialNetworks.youtubeUrl;
			if(StringUtils.isNotBlank(youtubeUrl) && !youtubeUrl.startsWith("http")) {
				params.socialNetworks.youtubeUrl = "http://" + youtubeUrl;
			}

			String personalWebsite = params.socialNetworks.personalWebsite;
			if(StringUtils.isNotBlank(personalWebsite) && !personalWebsite.startsWith("http")) {
				params.socialNetworks.personalWebsite = "http://" + personalWebsite;
			}
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
			SecUser loggedInUser = getLoggedInUser();
			Profile profile = Profile.findByUsername(username)
			// Fetch the profile information only if its an artist
			if (profile && (profile.isArtist == true)) {
				// TODO:  checkMinContent(username) // if logged in user is the same as the username,
				// then check min content and display edit page

				log.info("index() - end");
				[profile:profile, loggedInUser: loggedInUser]
			} else {
				redirect(uri: "/")
				flash.info = username + " was not found! Please try again.";
				log.info("index() - end");
			}
		} catch (Exception e) {
			log.error("There was an error while fetching profile for user " + username + " " + e.getMessage());
			flash.error = "Something went wrong! Please try again.";
			redirect(uri: "/")
			log.info("index() - end");
		}
	}

	def redirectFromSettings(String username) {
		log.info("redirectFromSettings() - begin - params [" + params + "]");
		Profile profile = Profile.findByUsername(username)
		if (profile.getIsArtist()) {
			redirect(uri: "/profile/" + profile.getUsername())
		} else {
			redirect(uri: "/");
		}
		log.info("redirectFromSettings() - end");
	}

	/**
	 * Endpoint to get the settings of the currently logged in user
	 * @return Settings of the logged in user
	 */
	def settings() {
		log.info("settings() - begin - params [" + params + "]");
		try {
			// TODO: checkMinContent(username)
			// then check min content and display edit page

			SecUser loggedInUser = getLoggedInUser();
			if (loggedInUser) {
				log.info("settings() - end");
				[loggedInUser: loggedInUser];
			} else {
				flash.error = "Please login to view settings.";
				redirect(uri: "/")
				log.info("settings() - end");
			}
		} catch (Exception e) {
			log.error("There was an error while fetching settings for user" + e.getMessage());
			flash.error = "Something went wrong! Please try again.";
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
		if (facebookAccessToken) { // **we need this check here otherwise we run into an exception on profile page load
			try {
				// Get user id and username from facebook
				def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me");
				loggedInUser = userService.findUserByUserId(userid);
			} catch (CustomException ce) {
				log.info("Error getting logged in user: " + ce.getErrorMessage());
			}
		} else {
			log.info("Error getting logged in user: Token not found");
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

	/**
	 * Endpoint to remove a favorite
	 */
	def removeFavoriteFromAdmin() { //TODO: check exactly where this is called from
		log.info("removeFavoriteFromAdmin() - begin - params [" + params + "]");
		def favoriteProfileInstance = Profile.findById(params.favoriteId)

		def loggedInUser = getLoggedInUser();
		def profileInstance = loggedInUser.profile;
		profileInstance.removeFromFavorites(favoriteProfileInstance)
		profileInstance.save(flush: true)
		render(template:'/admin/profileInfo', model: [profile:Profile.findByUsername(params.username)])
		log.info("removeFavoriteFromAdmin() - end");
	}

	def uploadProfilePictureFromSettings() {
		log.info("uploadProfilePictureFromSettings() - begin - params [" + params + "]");

		def loggedInUser = getLoggedInUser();

		def profilePicture = request.getFile('profilePicture')
		log.info("Profile picture size: " + profilePicture.size)
		if (profilePicture) {
			if (profilePicture.size > 3000000) {
				flash.error = "The file is too big, please upload a picture with size less than 3MB.";
			} else if (profilePicture.size == 0) {
				flash.error = "Please upload a valid file.";
			} else {
				aws.s3().on("ravishingme").rename(
						"profile-large.jpeg",
						"profile-large-" + new Timestamp(new Date().getTime()) + ".jpeg",
						"profile/" + loggedInUser.username + "/profilePicture/")
				def uploadedFile = profilePicture.inputStream.s3upload("profile-large.jpeg") {
					bucket "ravishingme"
					path "profile/" + loggedInUser.username + "/profilePicture/"
				}
				flash.info = "Saving your picture..."
			}

			redirect(uri: "/profile/settings");
			log.info("uploadProfilePictureFromSettings() - end");
		}
	}

	def uploadCoverPictureFromSettings() {
		log.info("uploadCoverPictureFromSettings() - begin - params [" + params + "]");

		def loggedInUser = getLoggedInUser();

		def coverPicture = request.getFile('coverPicture')
		log.info("Cover picture size: " + coverPicture.size)
		if (coverPicture) {
			if (coverPicture.size > 3000000) {
				flash.error = "The file is too big, please upload a picture with size less than 3MB.";
			} else if (coverPicture.size == 0) {
				flash.error = "Please upload a valid file";
			} else {
				coverPicture.inputStream.s3upload("cover.jpeg") {
					bucket "ravishingme"
					path "profile/" + loggedInUser.username + "/coverPicture/"
				}
				flash.info = "Saving your picture..."
			}

			redirect(uri: "/profile/settings");
			log.info("uploadCoverPictureFromSettings() - end");
		}
	}
}