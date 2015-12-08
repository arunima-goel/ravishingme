import org.ravishingme.Address
import org.ravishingme.BusinessHours
import org.ravishingme.City;
import org.ravishingme.CosmeticBrand
import org.ravishingme.Country;
import org.ravishingme.Profile
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.ravishingme.Service
import org.ravishingme.SocialNetworks
import org.ravishingme.State

class BootStrap {

	def init = { servletContext ->

		def cosmeticBrands = [
			"Avon",
			"Blue Heaven",
			"Bobbi Brown",
			"Chambor",
			"Christian Dior",
			"Color Bar",
			"Elle 18",
			"Lakme",
			"Lancome",
			"L’Oreal Paris",
			"M.A.C.",
			"Maybelline",
			"Miss Claire",
			"Nars",
			"O.P.I.",
			"Oriflame",
			"Revlon",
			"Viviana"]

		cosmeticBrands.each { cosmeticBrand ->
			new CosmeticBrand(cosmeticBrand).save(failOnError:true);
		}

		// Populate countries, states and cities
		Country country = new Country("India").save(failOnError: true);

		def states = ["Delhi", "Karnataka", "Maharashtra"];
		states.each { state ->
			country.addToStates(new State(state));
			country.save(flush:true);
		}

		def citiesStates = [
			[city: "Delhi", state: "Delhi"],
			[city: "Mumbai", state: "Maharashtra"],
			[city: "Mysore", state: "Karnataka"],
			[city: "Pune", state: "Maharashtra"]
		]


		citiesStates.each { cityState ->
			State state = State.findByName(cityState.state);
			state.addToCities(new City(cityState.city));
			state.save(flush: true);
		}

		SecRole secRoleUser = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		SecRole secRoleAdmin = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

		Profile profile = new Profile("test-user-name", "test-name");
		profile.setAboutYou("Test about you");

		Address address = new Address();
		City city = City.findByName("Pune");
		address.setCity(city);
		address.setState(city.state);
		address.setCountry(city.state.country);
		address.setStreetAddress("Test street address");
		address.save(failOnError:true);

		profile.setAddress(address);

		profile.setAffiliations("Test affiliations");
		profile.setAwards("Test awards");

		BusinessHours businessHours = new BusinessHours();
		businessHours.setStartTime(BusinessHours.Time.TEN);
		businessHours.setStartTimePeriod(BusinessHours.Period.AM);
		businessHours.setEndTime(BusinessHours.Time.TEN_THIRTY);
		businessHours.setEndTimePeriod(BusinessHours.Period.PM);
		businessHours.save(failOnError:true);
		profile.setBusinessHours(businessHours);

		profile.setIsComplimentaryTrial(true);
		profile.setEmail("agoel@test.com");
		profile.setPhoneNumber("123456");

		SocialNetworks socialNetworks = new SocialNetworks();
		socialNetworks.setFacebookUrl("/facebook");
		socialNetworks.setInstagramUrl("/instagram");
		socialNetworks.setPersonalWebsite("/personal");
		socialNetworks.setTwitterUrl("/twitter");
		socialNetworks.setYoutubeUrl("/youtube");
		socialNetworks.save(failOnError:true);
		profile.setSocialNetworks(socialNetworks);

		profile.setWhatsAppNumber("654321");
		profile.setIsWillingToTravel(true);
		profile.setYearsOfExperience(10);

		Service service = new Service();
		service.setName("Test service name 1");
		service.setStartingPrice(1000);
		service.save(failOnError:true);
		Service service2 = new Service();
		service2.setName("Test service name 1");
		service2.setStartingPrice(2000);
		service2.save(failOnError:true);
		Service service3 = new Service();
		service3.setName("Test service name 1");
		service3.setStartingPrice(3000);
		service3.save(failOnError:true);
		Service service4 = new Service();
		service4.setName("Test service name 1");
		service4.setStartingPrice(4000);
		service4.save(failOnError:true);
		profile.addToServices(service);
		profile.addToPreferredServices(service);

		SecUser secUser = new SecUser("testId", "testName", profile);
		secUser.save(failOnError: true);
		SecUserSecRole secUserSecRole = new SecUserSecRole(secUser, secRoleUser);
		secUserSecRole.save(failOnError: true);
		secUserSecRole = new SecUserSecRole(secUser, secRoleAdmin);
		secUserSecRole.save(failOnError: true);
	}
	def destroy = {
	}
}
