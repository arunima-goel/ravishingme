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
			CosmeticBrand.findByName(cosmeticBrand) ?: new CosmeticBrand(cosmeticBrand).save(failOnError:true);
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
			Service.findByName(service) ?: new Service(service).save(failOnError:true);
		}

		// Populate countries, states and cities
		Country country = Country.findByName("India") ?: new Country("India").save(failOnError: true);

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
			State.findByName(state) ?: country.addToStates(new State(state));
		}
		country.save(flush:true);
		
		def citiesStates = [
			[city: "Delhi", state: "Delhi NCR"],
			[city: "Bengaluru", state: "Karnataka"],
			[city: "Mumbai", state: "Maharashtra"],
		]


		citiesStates.each { cityState ->
			State state = State.findByName(cityState.state);
			City.findByName(cityState.city) ?: state.addToCities(new City(cityState.city));
			state.save(flush: true);
		}

		SecRole secRoleUser = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		SecRole secRoleAdmin = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

	}

	def destroy = {
	}
}
