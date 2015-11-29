package org.ravishingme

import java.util.Date;

class Address {

	String streetAddress
	City city
	State state
	Date lastUpdated
	Date dateCreated
	
	static constraints = {
		streetAddress nullable:false
	}
}
