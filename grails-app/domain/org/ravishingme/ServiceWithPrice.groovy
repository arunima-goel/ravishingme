package org.ravishingme

import java.util.Date;

class ServiceWithPrice {
	Service service
	Double startingPrice
	boolean isOffered
	Date lastUpdated
	Date dateCreated

	ServiceWithPrice (Service service, Double startingPrice, boolean isOffered) {
		this.service  = service;
		this.startingPrice = startingPrice;
		this.isOffered = isOffered;
	}

	static belongsTo = [ profile:Profile ]
	
	static constraints = {
		service blank: false, nullable: false
		startingPrice blank: false, nullable: false
	}
}
