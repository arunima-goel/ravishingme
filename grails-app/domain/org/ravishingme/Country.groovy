package org.ravishingme

import java.util.Date;

class Country {

	String name
	
	static hasMany = [states: State]
	
	Date lastUpdated
	Date dateCreated
	
	Country(String name) {
		this.name = name;
	}
	
	static constraints = {
		name nullable:false, unique:true
	}
}
