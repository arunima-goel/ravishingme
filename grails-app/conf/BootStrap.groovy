import org.ravishingme.Address
import org.ravishingme.BusinessHours
import org.ravishingme.CosmeticBrand
import org.ravishingme.Profile
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.ravishingme.Service
import org.ravishingme.SocialNetworks
import org.ravishingme.State

class BootStrap {

    def init = { servletContext ->
		new State("Mumbai").save(failOnError:true);
		State state = new State("Delhi").save(failOnError:true);
		
		SecRole secRoleUser = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		SecRole secRoleAdmin = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		
		CosmeticBrand cosmeticBrand = new CosmeticBrand("CosmeticBrand1").save(failOnError:true);
		
		Profile profile = new Profile("test-user-name", "test-name");
		profile.setAboutYou("Test about you");

		Address address = new Address();
		address.setCity("Delhi");
		address.setState(state);
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
		
		profile.setComplimentaryTrial(true);
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
		profile.setWillingToTravel(true);
		profile.setYearsOfExperience(10);
		
		Service service = new Service();
		service.setServiceName("Test service name 1");
		service.setStartingPrice(1000);
		profile.addToServices(service);
		profile.addToPreferredServices(service);
		profile.addToCosmeticBrands(cosmeticBrand);
		profile.addToPreferredCosmeticBrands(cosmeticBrand);
		
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
