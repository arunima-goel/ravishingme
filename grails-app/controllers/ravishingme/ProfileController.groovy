package ravishingme

import grails.converters.JSON
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
			profileInstance.services.clear();
		} else {
			profileInstance.preferredCosmeticBrands.clear();
			profileInstance.preferredServices.clear();
		}
		bindData profileInstance, params
		profileInstance.save(flush:true)

		render(view: "/admin/index", model: [profile: Profile.findByUsername(params.username)])
	}
}