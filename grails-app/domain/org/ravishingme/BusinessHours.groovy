package org.ravishingme

import java.util.Date;

class BusinessHours {

	Time startTime
	Period startTimePeriod
	Time endTime
	Period endTimePeriod
	Date lastUpdated
	Date dateCreated

	public enum Time {
		ONE("01:00"),
		ONE_THIRTY("01:30"),
		TWO("02:00"),
		TWO_THIRTY("02:30"),
		THREE("03:00"),
		THREE_THIRTY("03:30"),
		FOUR("04:00"),
		FOUR_THIRTY("04:30"),
		FIVE("05:00"),
		FIVE_THIRTY("05:30"),
		SIX("06:00"),
		SIX_THIRTY("06:30"),
		SEVEN("07:00"),
		SEVEN_THIRTY("07:30"),
		EIGHT("08:00"),
		EIGHT_THIRTY("08:30"),
		NINE("09:00"),
		NINE_THIRTY("09:30"),
		TEN("10:00"),
		TEN_THIRTY("10:30"),
		ELEVEN("11:00"),
		ELEVEN_THIRTY("11:30"),
		TWELVE("12:00"),
		TWELVE_THIRTY("12:30")

		final String value

		Time(String value) { this.value = value }

		String toString() { value }
		String getKey() { name() }
	}

	public enum Period {
		AM,
		PM

		String getKey() { name() }
		String getLowerCase() { name().toLowerCase() }
	}
}
