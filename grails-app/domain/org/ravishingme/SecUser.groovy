package org.ravishingme

import java.util.Date;

class SecUser implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService // TODO: should I remove this?

	String userid // Facebook ID
	String username
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	Date lastUpdated
	Date dateCreated
	
	static hasOne = [profile:Profile]
	
	SecUser(String userid, String username, Profile profile) {
		this()
		this.userid = userid
		this.username = username
		this.profile = profile
	}

	@Override
	int hashCode() {
		userid?.hashCode() ?: 0
	}

	@Override
	boolean equals(other) {
		is(other) || (other instanceof SecUser && other.userid == userid && other.username == username)
	}

	@Override
	String toString() {
		userid + " " + username
	}

	Set<SecRole> getAuthorities() {
		SecUserSecRole.findAllBySecUser(this)*.secRole
	}

	static transients = ['springSecurityService']

	static constraints = {
		userid blank: false, unique: true
		username blank: false, unique: true
	}

}
