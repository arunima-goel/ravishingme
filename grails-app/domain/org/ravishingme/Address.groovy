package org.ravishingme

import java.util.Date;

class Address {

	String streetAddress
	String city
	State state
	
	Date lastUpdated
	Date dateCreated
	
	static constraints = {
		streetAddress nullable:false
		state nullable:true
		city nullable:true
	}
}
