package org.ravishingme


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
	Boolean isWillingToTravel
	Boolean isComplimentaryTrial
	Integer yearsOfExperience
	BusinessHours businessHours
	SocialNetworks socialNetworks 
	String awards
	String affiliations
	
	List servicesOffered = new ArrayList()
	
	static transients = [ 'portfolioImages' ]
	static belongsTo = [user: SecUser]
	static hasOne = [profilePic: Image, coverPic: Image]
	static hasMany = [servicesOffered: ServiceWithPrice, favorites: Profile, cosmeticBrands: CosmeticBrand,
		preferredCosmeticBrands: CosmeticBrand, preferredServices: Service]
	
	static mapping = {
		servicesOffered cascade:"all-delete-orphan"
	}
		
	def getServicesOfferedList() {
		println("Service offered: " + servicesOffered)
		return servicesOffered;
	}
	
	def aws
	def getPortfolioImages() {
		return aws.s3().on("ravishingme").getByCriteria_Prefix("profile/" + username + "/portfolioPictures/p-");
	}

	static constraints = { 
		isArtist blank: false, nullable: false
		name blank: false, nullable: false
		username blank: false, nullable: false, editable: false
		email email: true, nullable: true
		aboutYou nullable:true, maxSize: 1000
		affiliations nullable: true
		address nullable: true
		awards nullable: true
		businessHours nullable: true
		isComplimentaryTrial nullable: true
		coverPic nullable: true
		phoneNumber nullable: true
		profilePic nullable: true
		socialNetworks nullable: true
		whatsAppNumber nullable: true
		isWillingToTravel nullable: true
		yearsOfExperience nullable: true
	}
}