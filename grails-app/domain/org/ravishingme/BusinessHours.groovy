package org.ravishingme

import java.util.Date;

class BusinessHours {

	Time startTime
	Period startTimePeriod
	Time endTime
	Period endTimePeriod
	Date lastUpdated
	Date dateCreated
		
	enum Time {
		TEN("10:00"),
		TEN_THIRTY("10:30")
		
		final String value

		Time(String value) { this.value = value }

		String toString() { value }
		String getKey() { name() }
	}

	enum Period {
		AM,
		PM
	}
}
