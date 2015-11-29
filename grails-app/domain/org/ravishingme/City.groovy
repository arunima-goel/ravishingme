package org.ravishingme

import java.util.Date;

class City {

	String name
	Date lastUpdated
	Date dateCreated
	
	static belongsTo = [state: State]

		static constraints = {
		name nullable:false
	}
}
