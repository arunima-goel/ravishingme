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

class BaseController {
	def oauthService
	def userService
	def facebookService

	def about() {
		log.info("Params: " + params);
		def loggedInUser = getLoggedInUser();
		def searchParams = [:];
		searchParams["city"] = "1";
		render(view:'/about', model: [profile:buildRavMeProfile(), loggedInUser: loggedInUser, searchParams: searchParams])
	}
	
	def faqs() {
		log.info("Params: " + params);
		def loggedInUser = getLoggedInUser();
		def searchParams = [:];
		searchParams["city"] = "1"; 
		render(view:'/faqs', model: [loggedInUser: loggedInUser, searchParams: searchParams])
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
	
	def buildRavMeProfile() {
		def profile = new Profile("ravishing-me", "Ravishing.me");
		
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
		socialNetworks.twitterUrl = "www.twitter.com/ravishingdotme";
		socialNetworks.wordpressUrl = "www.ravishingdotme.wordpress.com";
		socialNetworks.facebookUrl = "www.facebook.com/Ravishingme-1621934231391175";
		socialNetworks.save(failOnError:true);
		profile.setSocialNetworks(socialNetworks);
			
		profile.setYearsOfExperience(0);
		return profile;
	}

}