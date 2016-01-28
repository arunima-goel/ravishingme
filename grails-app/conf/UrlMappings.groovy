class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?"{
			constraints {
				// apply constraints here
			}
		}
		name landingPage: "/"(controller: "user", action: "index")
		
		"/profile/$username?" (controller: "profile", action: "index")
		"/profile/update" (controller: "profile", action: "update")
		"/profile/updateSettings" (controller: "profile", action: "updateSettings")
		"/profile/addFavorite" (controller: "profile", action: "addFavorite")
		"/profile/removeFavorite" (controller: "profile", action: "removeFavorite")
		"/profile/uploadPicturesFromSettings" (controller: "profile", action: "uploadPicturesFromSettings")
		name removeFavoriteFromAdmin: "/profile/removeFavoriteFromAdmin" (controller: "profile", action: "removeFavoriteFromAdmin")
		name removeFavoriteFromSettings: "/profile/removeFavoriteFromSettings" (controller: "profile", action: "removeFavoriteFromSettings")
		name settings: "/profile/settings"(controller:"profile", action: "settings")
		name profileView: "/profile/$username" (controller:"profile", action:"index")
		
		name about: "/about"(controller:"base", action:"about")
		name faqs: "/faqs"(controller:"base", action:"faqs")
		name policies: "/policies"(controller:"base", action:"policies")
		
		"/search"(controller:"search", action:"index")
		
		"/admin"(controller:"admin", action:"/index")
		
		"404"(controller: "error", action: "error404")
	}
}
