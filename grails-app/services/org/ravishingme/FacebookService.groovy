package org.ravishingme

import org.scribe.model.Token;
import ravishingme.CustomException

import grails.converters.JSON

class FacebookService {
	def oauthService

	def getProfileImage(Token facebookAccessToken, String userId, String type) {
		if (!facebookAccessToken) {
			throw new CustomException('Token not found.')
		}

		if (!userId) {
			throw new CustomException("UserId not found.")
		}
		
		String url = "https://graph.facebook.com/${userId}/picture?type=" + type + "&redirect=false"
		def facebookResource = oauthService.getFacebookResource(facebookAccessToken, url)
		def facebookResponse = JSON.parse(facebookResource?.getBody())
		String fbProfilePicUrl = facebookResponse.data?.url

		if (!fbProfilePicUrl) {
			log.info("FB Profile Image - ${facebookResource}")
			throw new CustomException("Profile image not found.")
		}

		return [fbProfilePicUrl, facebookResponse]
	}
	
	def getCoverImage(Token facebookAccessToken, String userId) {
		if (!facebookAccessToken) {
			throw new CustomException('Token not found.')
		}

		if (!userId) {
			throw new CustomException("UserId not found.")
		}
		
		String url = "https://graph.facebook.com/${userId}?width=1000&height=1000&fields=cover"
		def facebookResource = oauthService.getFacebookResource(facebookAccessToken, url)
		def facebookResponse = JSON.parse(facebookResource?.getBody())
		String fbCoverPicUrl = facebookResponse.cover?.source

		if (!fbCoverPicUrl) {
			log.info("FB Cover Image - ${facebookResource}")
			throw new CustomException("Cover image not found.")
		}

		return [fbCoverPicUrl, facebookResponse]
	}

	/**
	 * Helper method to get the user id and name from a facebook access token
	 */
	def getUserIdAndName(Token facebookAccessToken, String userId) {
		if (!facebookAccessToken) {
			throw new CustomException('Token not found.')
		}

		if (!userId) {
			throw new CustomException('UserId not found.')
		}

		String url = "https://graph.facebook.com/${userId}"
		def facebookResource = oauthService.getFacebookResource(facebookAccessToken, url)
		log.info("Response body: " + facebookResource?.getBody());
		def facebookResponse = JSON.parse(facebookResource?.getBody())
		return [facebookResponse.id, facebookResponse.name, facebookResponse.email]
	}

}
