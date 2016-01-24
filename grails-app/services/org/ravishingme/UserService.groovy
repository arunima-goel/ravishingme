package org.ravishingme

import grails.converters.JSON
import grails.transaction.Transactional

import org.scribe.model.Token
import ravishingme.CustomException

@Transactional
class UserService {

	def counterService
	def facebookService

	def findUserByUserId(String userid) {
		SecUser loggedInUser = SecUser.findByUserid(userid);
		if (loggedInUser != null) {
			Profile loggedInUserProfile = Profile.findById(loggedInUser.profile.id);
			log.info("Got logged in user userId: " + userid + " profile username: " + loggedInUser.profile.username)
			loggedInUser.profile = loggedInUserProfile;
			return loggedInUser;
		}
		return null;
	}

	/** 
	 * Helper method to create a new stub user
	 * @param name Name of the user
	 * @param userId User Id of the user
	 */
	def createUser(String name, String userId, String email) {
		// Generate the user name
		def username = counterService.getNextUsernameInSequence(name.split(" ").join("-"))

		// Assign user role
		def role = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority: "ROLE_USER").save(failOnError: true)

		// Create a new profile
		def profile = new Profile(username, name);
		for (Service service : Service.list()) {
			profile.addToServicesOffered(new ServiceWithPrice(service, 0.0, false));
		}

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
		socialNetworks.save(failOnError:true);
		profile.setSocialNetworks(socialNetworks);

		profile.setYearsOfExperience(0);
		profile.setEmail(email);

		def user = new SecUser(userId, username,  profile)
		user.save(failOnError: true)

		if (!user.authorities.contains(role)) {
			SecUserSecRole.create user, role
		}
		
		return user;
	}
}
