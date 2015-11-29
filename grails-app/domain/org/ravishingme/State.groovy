package org.ravishingme

import java.util.Date;

class State {

	String name
	Date lastUpdated
	Date dateCreated
	
	State(String name) {
		this.name = name;
	}
	
	static constraints = {
		name nullable:false
	}
}
