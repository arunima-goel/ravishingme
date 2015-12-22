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

class SearchController {
	def index() {
		log.info("Searching: " + params);
		[profiles: Profile.list()];
	}

}