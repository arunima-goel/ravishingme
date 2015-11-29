package org.ravishingme

import java.util.Date;

class State {

	String name
	Date lastUpdated
	Date dateCreated
	
	static hasMany = [cities: City]
	
	static constraints = {
		name nullable:false
	}
}
