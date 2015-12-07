package org.ravishingme

import java.util.Date;

class City {

	String name
	
	Date lastUpdated
	Date dateCreated
	
	City(String name) {
		this.name = name;
	}
	
	static constraints = {
		name nullable:false
	}
}
