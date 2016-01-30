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
import org.ravishingme.ServiceWithPrice;
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
			"Max Factor",
			"Miss Claire",
			"Nars",
			"O.P.I.",
			"Oriflame",
			"Revlon",
			"Viviana"]

		cosmeticBrands.each { cosmeticBrand ->
			new CosmeticBrand(cosmeticBrand).save(failOnError:true);
		}

		def services = [
			"Base Makeup",
			"Bridal Makeup",
			"Editorial Makeup",
			"Engagement Makeup",
			"Eye Makeup",
			"Ramp Shows",
			"Haircut",
			"Hair styling",
			"Light Makeup",
			"Party Makeup",
			"Reception Makeup",
			"Airbrush"]

		services.each { service ->
			new Service(service).save(failOnError:true);
		}

		// Populate countries, states and cities
		Country country = new Country("India").save(failOnError: true);

		def states = [
			"Delhi NCR",
			"Andhra Pradesh",
			"Bihar", 
			"Chandigarh",
			"Goa",
			"Gujarat",
			"Karnataka", 
			"Kerala",
			"Madhya Pradesh",
			"Maharashtra", 
			"Punjab", 
			"Rajasthan",
			"Tamil Nadu",
			"Telangana", 
			"Uttar Pradesh",
			"West Bengal"];
		states.each { state ->
			country.addToStates(new State(state));
			country.save(flush:true);
		}

		def citiesStates = [
			[city: "Delhi", state: "Delhi NCR"],
//			[city: "Gurgaon", state: "Delhi NCR"],
//			[city: "Faridabad", state: "Delhi NCR"],
//			[city: "Ghaziabad", state: "Delhi NCR"],
//			[city: "Greater Noida", state: "Delhi NCR"],
//			
//			[city: "Visakhapatnam", state: "Andhra Pradesh"],
//			
//			[city: "Patna", state: "Bihar"],
//			
//			[city: "Chandigarh", state: "Chandigarh"],
			
			
//			[city: "Panaji", state: "Goa"],
			
//			[city: "Ahmedabad", state: "Gujarat"],
//			[city: "Surat", state: "Gujarat"],
//			[city: "Vadodra", state: "Gujarat"],
//			
//			[city: "Mysuru", state: "Karnataka"],
			[city: "Bengaluru", state: "Karnataka"],
			
//			[city: "Kottayam", state: "Kerala"],
//			[city: "Kochi", state: "Kerala"],
//			[city: "Thiruvananthapuram", state: "Kerala"],
//			
//			[city: "Indore", state: "Madhya Pradesh"],
//			[city: "Bhopal", state: "Madhya Pradesh"],
//			[city: "Gwalior", state: "Madhya Pradesh"],
//			[city: "Ujjain", state: "Madhya Pradesh"],
//			
			[city: "Mumbai", state: "Maharashtra"],
//			[city: "Navi Mumbai", state: "Maharashtra"],
//			[city: "Thane", state: "Maharashtra"],
//			[city: "Pune", state: "Maharashtra"],
//			
//			[city: "Ludhiana", state: "Punjab"],
//			[city: "Patiala", state: "Punjab"],
//			[city: "Amritsar", state: "Punjab"],
//			
//			[city: "Jaipur", state: "Rajasthan"],
//			[city: "Udaipur", state: "Rajasthan"],
//			[city: "Jodhpur", state: "Rajasthan"],
//			
//			[city: "Chennai", state: "Tamil Nadu"],
//			[city: "Madurai", state: "Tamil Nadu"],
//			
//			[city: "Hyderabad", state: "Telangana"],
//			
//			[city: "Agra", state: "Uttar Pradesh"],
//			[city: "Lucknow", state: "Uttar Pradesh"],
//			[city: "Allahabad", state: "Uttar Pradesh"],
//			[city: "Varanasi", state: "Uttar Pradesh"],
//			[city: "Noida", state: "Uttar Pradesh"],
//			
//			[city: "Kolkata", state: "West Bengal"],
			
		]


		citiesStates.each { cityState ->
			State state = State.findByName(cityState.state);
			state.addToCities(new City(cityState.city));
			state.save(flush: true);
		}

		SecRole secRoleUser = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		SecRole secRoleAdmin = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

		createUser("test-username1", "testname1", secRoleUser, secRoleAdmin);
		createUser("test-username2", "testname2", secRoleUser, secRoleAdmin);
		createUser("test-username3", "testname3", secRoleUser, secRoleAdmin);
		createUser("test-username4", "testname4", secRoleUser, secRoleAdmin);
		createUser("test-username5", "testname5", secRoleUser, secRoleAdmin);
		createUser("test-username6", "testname6", secRoleUser, secRoleAdmin);
		createUser("test-username7", "testname7", secRoleUser, secRoleAdmin);
		createUser("test-username8", "testname8", secRoleUser, secRoleAdmin);
	}

	def createUser = { username, name, secRoleUser, secRoleAdmin ->
		Profile profile = new Profile(username, name);
		profile.setAboutYou("Test about you");

		Address address = new Address();
		City city = City.findByName("Mumbai");
		address.setCity(city);
		address.setState(city.state);
		address.setCountry(city.state.country);
		address.setStreetAddress(username + ": Test street address");
		address.save(failOnError:true);

		profile.setAddress(address);

		profile.setAffiliations(username + ":Test affiliations");
		profile.setAwards(username + ":Test awards");

		BusinessHours businessHours = new BusinessHours();
		businessHours.setStartTime(BusinessHours.Time.TEN);
		businessHours.setStartTimePeriod(BusinessHours.Period.AM);
		businessHours.setEndTime(BusinessHours.Time.TEN_THIRTY);
		businessHours.setEndTimePeriod(BusinessHours.Period.PM);
		businessHours.save(failOnError:true);
		profile.setBusinessHours(businessHours);

		profile.setIsComplimentaryTrial(true);
		profile.setEmail(username + "@test.com");
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

		for (Service service : Service.list()) {
			profile.addToServicesOffered(new ServiceWithPrice(service, 0.0, false));
		}
		
		SecUser secUser = new SecUser(username, name, profile);
		secUser.save(failOnError: true);
		SecUserSecRole secUserSecRole = new SecUserSecRole(secUser, secRoleUser);
		secUserSecRole.save(failOnError: true);
		secUserSecRole = new SecUserSecRole(secUser, secRoleAdmin);
		secUserSecRole.save(failOnError: true);
	}
	def destroy = {
	}
}
