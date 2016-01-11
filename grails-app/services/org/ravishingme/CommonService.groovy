package org.ravishingme


class CommonService {

	
	def logEndpointCallEntry(String endpoint, SecUser loggedInUser, String artistUsername) {
		log.info("Enter - " + endpoint + " with logged in user [" + loggedInUser + "] and profile info requested for [" + artistUsername + "]");
	}
	
	def logEndpointCallExit(String endpoint, SecUser loggedInUser) {
		log.info("Exit - " + endpoint + " with logged in user [" + loggedInUser + "]");
	}
}
