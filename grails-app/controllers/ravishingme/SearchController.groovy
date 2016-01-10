package ravishingme

import grails.converters.JSON

import org.apache.commons.lang.StringUtils;
import org.ravishingme.Address;
import org.ravishingme.BusinessHours;
import org.ravishingme.City;
import org.ravishingme.SecRole
import org.ravishingme.SecUser
import org.ravishingme.SecUserSecRole
import org.ravishingme.SocialNetworks;
import org.scribe.model.Token
import org.ravishingme.Profile

class SearchController {
	def oauthService
	def facebookService

	def index() {
		log.info("Index Searching: " + params);
		SecUser loggedInUser = getLoggedInUser();
		log.info("Got logged in user info: " + loggedInUser)

		List<Long> servicesList = null;
		if (params.services != null) {
			servicesList = getLongListFromStringList(params.services)
		}

		def searchParams = [:];
		searchParams["city"] = params.city;
		if (params.services) {
			searchParams["services"] = servicesList.join(",");
		}

		def result = performSearch(params.city, servicesList, null, null, null)
		log.info(searchParams);
		
		[profiles: result, searchParams: searchParams, loggedInUser: loggedInUser]
	}

	private performSearch(String cityId,
			ArrayList<Long> servicesList,
			Boolean isWillingToTravel,
			Double bridalMakeupRange,
			ArrayList<Long> cosmeticsList) {

		log.info("Performing search for City: " + cityId
				+ " Services: " + servicesList
				+ " isWillingToTravel: " + isWillingToTravel
				+ " bridalMakeupRange: " + bridalMakeupRange
				+ " cosmeticsList: " + cosmeticsList);
		def profileCriteria = Profile.createCriteria()
		def result = profileCriteria.listDistinct{
			and {
				if (StringUtils.isNotEmpty(cityId)) {
					address {
						city {
							eq ('id', Long.valueOf(cityId))
						}
					}
				}
				if (servicesList != null && servicesList.size() > 0) {
					servicesOffered {
						and {
							service {
								'in' ('id', servicesList)
							}
							eq('isOffered', true)
						}
					}
				}
				if (isWillingToTravel != null) {
					eq('isWillingToTravel', isWillingToTravel)
				}
				if (bridalMakeupRange != null) {
					servicesOffered {
						and {
							service {
								eq('id', Long.valueOf(2)) // bridal make up id = 2
							}
							lt('startingPrice', bridalMakeupRange)
							eq('isOffered', true)
						}
					}
				}
				if (cosmeticsList != null && cosmeticsList.size() > 0) {
					cosmeticBrands {
						'in' ('id', cosmeticsList)
					}
				}
			}
			order("id", "asc")
		}


		log.info("Result: ");
		log.info(result);
		return result;
	}

	def getLongListFromStringList(stringList) {
		List<Long> longList = null;
		longList = stringList.collect { Long.valueOf(it) }
		log.info("Long list: " + longList)
		return longList;
	}

	def search() { // TODO: change this to filter
		log.info("Search Searching: " + params);
		SecUser loggedInUser = getLoggedInUser();
		log.info("Got logged in user info: " + loggedInUser)

		String city = null;
		if (params.city) {
			city = params.city;
		}

		ArrayList<Long> servicesList = null;
		if (params.services) {
			servicesList = Arrays.asList(params.services.split("\\s*,\\s*")).collect { Long.valueOf(it) };
		}

		Boolean isWillingToTravel = null;
		if (params.travel) {
			isWillingToTravel = (params.travel == "No") ? false : true;
		}

		Double bridalMakeupRange = null;
		if (params.makeupRange) {
			bridalMakeupRange = Double.valueOf(params.makeupRange);
		}

		List<Long> cosmeticsList = null;
		if (params.cosmeticBrands != null) {
			cosmeticsList = getLongListFromStringList(params.cosmeticBrands)
		}

		def result = performSearch(city, servicesList, isWillingToTravel, bridalMakeupRange, cosmeticsList);

		render(template:'/search/searchResults', model: [profiles: result])
	}

	def getLoggedInUser() {
		log.info("Getting logged in user")
		Token facebookAccessToken = (Token) session[oauthService.findSessionKeyForAccessToken('facebook')]
		try {
			// Get user id and username from facebook
			def (userid, name) = facebookService.getUserIdAndName(facebookAccessToken, "me");
			SecUser loggedInUser = SecUser.findByUserid(userid);
			Profile loggedInUserProfile = Profile.findById(loggedInUser.profile.id);
			log.info("Got logged in user userId: " + userid + " name: " + name + " profile username: " + loggedInUser.profile.username)
			loggedInUser.profile = loggedInUserProfile;
			return loggedInUser;
		} catch (CustomException ce) {
			log.info("Error getting logged in user")
			flash.error = "Exception during login"
		}
		return null;
	}
}