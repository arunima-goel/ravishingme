package org.ravishingme

import java.util.Date;

class City {

	String name
	
	Date lastUpdated
	Date dateCreated
	
	static belongsTo = [state: State]
	
	City(String name) {
		this.name = name;
	}
	
	static constraints = {
		name nullable:false
	}
}
