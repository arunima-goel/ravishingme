package org.ravishingme

import grails.transaction.Transactional;

@Transactional
class CounterService {
	public static final String USER_NAME_SEQUENCE_NAME = "username_";
	
	def getNextUsernameInSequence(String username) {
		log.info("Get next username in sequence for user: " + username);
		def nextUsernameInSequence = username;
		
		def usernameKey = USER_NAME_SEQUENCE_NAME + username
		def counter = Counter.findByName(usernameKey)
		if (counter) {
			counter.sequence = counter.sequence + 1
			counter.save(failOnError: true)
			nextUsernameInSequence = nextUsernameInSequence + "-" + counter.sequence
		} else {
		 	new Counter(usernameKey, 1).save(failOnError: true)
		}
		
		log.info("Next username in sequence is " + nextUsernameInSequence)
		return nextUsernameInSequence		
	}
}
