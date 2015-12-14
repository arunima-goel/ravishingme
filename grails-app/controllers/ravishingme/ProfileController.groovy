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
}