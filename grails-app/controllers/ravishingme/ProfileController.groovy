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

		// TODO: clean this up
		if (profileInstance.address == null) {
			Address address = new Address();
			City city = City.findByName("Pune");
			address.setCity(city);
			address.setState(city.state);
			address.setCountry(city.state.country);
			address.setStreetAddress("Test street address");
			address.save(failOnError:true);

			profileInstance.setAddress(address);
		}
		if (profileInstance.businessHours == null) {
			BusinessHours businessHours = new BusinessHours();
			businessHours.setStartTime(BusinessHours.Time.TEN);
			businessHours.setStartTimePeriod(BusinessHours.Period.AM);
			businessHours.setEndTime(BusinessHours.Time.TEN_THIRTY);
			businessHours.setEndTimePeriod(BusinessHours.Period.PM);
			businessHours.save(failOnError:true);

			profileInstance.setBusinessHours(businessHours);
		}

		if (profileInstance.socialNetworks == null) {
			SocialNetworks socialNetworks = new SocialNetworks();
			socialNetworks.save(failOnError:true);
			profileInstance.setSocialNetworks(socialNetworks);
		}

		bindData profileInstance, params;

		profileInstance.address.state = profileInstance.address.city.state;
		profileInstance.address.country = profileInstance.address.city.state.country;
		profileInstance.address.save(flush:true);
		profileInstance.save(flush:true);

		render(template:'/admin/profileInfo', model: [profile: Profile.findByUsername(params.username)])
	}

	def index(String username) {
		log.info("Getting profile: " + username)
		try {
			def profile = Profile.findByUsername(username)
			if (profile) {
				// checkMinContent(username) // if logged in user is the same as the username,
				// then check min content and display edit page
				// def user = getLoggedInUser()
				[profile:profile]
			} else {
				redirect(uri: "/")
			}

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
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me")
			log.info("Got logged in user")
			log.info("userId: " + userid + " name: " + name)
			return User.findByUserid(userid)
		} catch (CustomException ce) {
			log.info("Error getting logged in user")
			flash.error = "Exception during login"
		}
	}
}