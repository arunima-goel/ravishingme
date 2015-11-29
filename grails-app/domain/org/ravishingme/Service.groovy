package org.ravishingme

import java.util.Date;

class Service {
	String name
	Double startingPrice
	Date lastUpdated
	Date dateCreated
	
	static constraints = {
		name blank: false, nullable: false
		startingPrice blank: false, nullable: false
	}	
}
