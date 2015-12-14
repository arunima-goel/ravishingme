package org.ravishingme

import java.util.Date;

class CosmeticBrand {
	String name
	Date lastUpdated
	Date dateCreated
	
	static searchable = true
		
	CosmeticBrand(String name) {
		this.name = name
	}
}
