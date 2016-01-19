package org.ravishingme

import java.util.Date;

class SocialNetworks {

	String facebookUrl
	String twitterUrl
	String instagramUrl
	String youtubeUrl
	String wordpressUrl
	String personalWebsite
	Date lastUpdated
	Date dateCreated
	
	static constraints = {
		facebookUrl nullable:true
		twitterUrl nullable:true
		instagramUrl nullable:true
		youtubeUrl nullable:true
		wordpressUrl nullable:true
		personalWebsite nullable:true
	}
}
