package org.ravishingme

import grails.converters.JSON
import grails.transaction.Transactional

import org.scribe.model.Token

@Transactional
class UserService {

	def counterService

	def createUser(String name, String userId) {
		def username = counterService.getNextUsernameInSequence(name.split(" ").join("-"))
		def role = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority: "ROLE_USER").save(failOnError: true)
		
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
		
//		profile.profilePic = new Image();
//		profile.coverPic = new Image();
//		
		def user = new SecUser(userId, username,  profile)
		user.save(failOnError: true)
		
		if (!user.authorities.contains(role)) {
			SecUserSecRole.create user, role
		}
	}
}
