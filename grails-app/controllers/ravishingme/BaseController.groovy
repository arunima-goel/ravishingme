package ravishingme

import org.ravishingme.Address
import org.ravishingme.BusinessHours
import org.ravishingme.City
import org.ravishingme.Profile
import org.ravishingme.SecUser
import org.ravishingme.SocialNetworks
import org.scribe.model.Token

class BaseController {
	def oauthService
	def userService
	def facebookService

	/**
	 * Endpoint to render the about page
	 */
	def about() {
		log.info("about() - begin - params [" + params + "]");
		def searchParams = [:];
		searchParams["city"] = "1";
		render(view:'/about', model: [profile:buildRavMeProfile(), loggedInUser: getLoggedInUser(), searchParams: searchParams])
		log.info("about() - end");
	}
	
	/**
	 * Endpoint to render the faqs page
	 */
	def faqs() {
		log.info("faqs() - begin - params [" + params + "]");
		def searchParams = [:];
		searchParams["city"] = "1";
		render(view:'/faqs', model: [loggedInUser: getLoggedInUser(), searchParams: searchParams])
		log.info("faqs() - end");
	}
	
	/**
	 * Endpoint to render the policies page
	 */
	def policies() {
		log.info("policies() - begin - params [" + params + "]");
		def searchParams = [:];
		searchParams["city"] = "1";
		render(view:'/policies', model: [loggedInUser: getLoggedInUser(), searchParams: searchParams])
		log.info("policies() - end");
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
	 * Helper method to build the ravishing me profile for the about page
	 * @return
	 */
	def buildRavMeProfile() {
		log.info("buildRavMeProfile() - begin");
		def profile = new Profile("ravishing-me", "ravishing.me");

		Address address = new Address();
		City city = City.findByName("Delhi");
		address.setCity(city);
		address.setState(city.state);
		address.setCountry(city.state.country);
		address.setStreetAddress("");
		address.save(failOnError:true);
		profile.setAddress(address);

		BusinessHours businessHours = new BusinessHours();
		businessHours.setStartTime(BusinessHours.Time.TEN);
		businessHours.setStartTimePeriod(BusinessHours.Period.AM);
		businessHours.setEndTime(BusinessHours.Time.TEN_THIRTY);
		businessHours.setEndTimePeriod(BusinessHours.Period.PM);
		businessHours.save(failOnError:true);
		profile.setBusinessHours(businessHours);

		SocialNetworks socialNetworks = new SocialNetworks();
		socialNetworks.twitterUrl = "http://www.twitter.com/ravishingdotme";
		socialNetworks.wordpressUrl = "http://www.ravishingdotme.wordpress.com";
		socialNetworks.facebookUrl = "http://www.facebook.com/Ravishingme-1621934231391175";
		socialNetworks.save(failOnError:true);
		profile.setSocialNetworks(socialNetworks);
		
		profile.email = "ravishingdotme@gmail.com";

		profile.setYearsOfExperience(0);
		log.info("buildRavMeProfile() - end");
		return profile;
	}

}