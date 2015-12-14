package org.ravishingme

import java.util.Date;

class SecRole implements Serializable {

	private static final long serialVersionUID = 1

	String authority
	Date lastUpdated
	Date dateCreated
	
	SecRole(String authority) {
		this()
		this.authority = authority
	}

	@Override
	int hashCode() {
		authority?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof SecRole && other.authority == authority)
	}

	@Override
	String toString() {
		authority
	}

	static constraints = {
		authority blank: false, unique: true
	}

	static mapping = {
		cache true
	}
}
