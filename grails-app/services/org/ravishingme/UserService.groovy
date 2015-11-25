package org.ravishingme

import grails.converters.JSON
import grails.transaction.Transactional

import org.scribe.model.Token

@Transactional(readOnly = true)
class UserService {

	def counterService

	def createUser(String name, String userId) {
		def username = counterService.getNextUsernameInSequence(name.split(" ").join("-"))
		def role = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority: "ROLE_USER").save(failOnError: true)
		
		def profile = new Profile(username, name);
//		profile.profilePic = new Image();
//		profile.coverPic = new Image();
//		
		def user = new SecUser(userId, username,  profile)
		user.save(failOnError: true)
		
		if (!user.authorities.contains(role)) {
			SecUserSecRole.create user, role
		}
	}
}
