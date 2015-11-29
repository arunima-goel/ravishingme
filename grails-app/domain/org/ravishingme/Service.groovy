package org.ravishingme

import java.util.Date;

class Service {
	String serviceName
	Double startingPrice
	Date lastUpdated
	Date dateCreated
	
	static constraints = {
		serviceName blank: false, nullable: false
		startingPrice blank: false, nullable: false
	}	
}
