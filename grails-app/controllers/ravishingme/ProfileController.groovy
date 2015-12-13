package ravishingme

import grails.converters.JSON

import org.ravishingme.Address;
import org.ravishingme.BusinessHours;
import org.ravishingme.City;
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.scribe.model.Token
import org.ravishingme.Profile

class ProfileController {
	def update() {
		log.info("Updating profile: " + params);

		def profileInstance = Profile.get(params.id);

		// ***deselected values don't get saved if we don't clear the values here
		if (profileInstance.getIsArtist()) {
			profileInstance.cosmeticBrands.clear();
			//profileInstance.services.clear();
		} else {
			profileInstance.preferredCosmeticBrands.clear();
			profileInstance.preferredServices.clear();
		}
		bindData profileInstance, params;
		
		// TODO: clean this up
		Address address = new Address();
		City city = City.findByName("Pune");
		address.setCity(city);
		address.setState(city.state);
		address.setCountry(city.state.country);
		address.setStreetAddress("Test street address");
		address.save(failOnError:true);

		profileInstance.setAddress(address);

		BusinessHours businessHours = new BusinessHours();
		businessHours.setStartTime(BusinessHours.Time.TEN);
		businessHours.setStartTimePeriod(BusinessHours.Period.AM);
		businessHours.setEndTime(BusinessHours.Time.TEN_THIRTY);
		businessHours.setEndTimePeriod(BusinessHours.Period.PM);
		businessHours.save(failOnError:true);
		profileInstance.setBusinessHours(businessHours);
		
//		profileInstance.address.state = profileInstance.address.city.state;
//		profileInstance.address.country = profileInstance.address.city.state.country;
//		profileInstance.address.save(flush:true);
		profileInstance.save(flush:true);

		render(view: "/admin/index", model: [profile: Profile.findByUsername(params.username)])
	}
}