package org.ravishingme

import java.util.Date;
import java.util.List;

class Profile implements Serializable {

	Profile(String username, String name) {
		this.name = name
		this.username = username
		this.isArtist = false
	}

	Date lastUpdated
	Date dateCreated
	Boolean isArtist
	String name
	String username
	String email
	Address address 
	String phoneNumber
	String whatsAppNumber
	String aboutYou
	Boolean willingToTravel
	Boolean complimentaryTrial
	Integer yearsOfExperience
	BusinessHours businessHours
	SocialNetworks socialNetworks 
	String awards
	String affiliations
	
	static belongsTo = [user: SecUser]
	static hasOne = [profilePic: Image, coverPic: Image]
	static hasMany = [services: Service, favorites: Profile, cosmeticBrands: CosmeticBrand,
		preferredCosmeticBrands: CosmeticBrand, preferredService: Service]
	
	
//	static searchable = {
//		except = ['profilePic', 'coverPic', 'user', 'specialities', 'services']
//		cosmeticBrands reference:true
//	}

	static constraints = { // TODO: check constraints
		isArtist blank: false, nullable: false
		name blank: false, nullable: false
		username blank: false, nullable: false, editable: false
		email email: true, nullable: true
		aboutYou nullable:true, maxSize: 250 // TODO: check size
		affiliations nullable: true
		address nullable: true
		awards nullable: true
		businessHours nullable: true
		complimentaryTrial nullable: true
		coverPic nullable: true
		phoneNumber nullable: true
		profilePic nullable: true
		socialNetworks nullable: true
		whatsAppNumber nullable: true
		willingToTravel nullable: true
		yearsOfExperience nullable: true
	}
}