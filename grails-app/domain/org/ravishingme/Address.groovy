package org.ravishingme

import java.util.Date;

class Address {

	String streetAddress
	City city
	State state
	Country country
	
	Date lastUpdated
	Date dateCreated
	
	static constraints = {
		streetAddress nullable:false
		state nullable:true
		city nullable:true
		country nullable:true
	}
}
