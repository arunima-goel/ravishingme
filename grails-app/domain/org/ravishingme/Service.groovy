package org.ravishingme

import java.util.Date;

class Service {
	String name
	Date lastUpdated
	Date dateCreated
	
	Service (String name) {
		this.name = name;
	}
	
	static constraints = {
		name blank: false, nullable: false
	}	
}
