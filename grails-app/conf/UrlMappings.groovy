class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?"{
			constraints {
				// apply constraints here
			}
		}


		"/profile/$username?" (controller: "profile", action: "index")
		"/profile/update" (controller: "profile", action: "update")
		"/profile/updateSettings" (controller: "profile", action: "updateSettings")
		"/profile/addFavorite" (controller: "profile", action: "addFavorite")
		"/profile/removeFavorite" (controller: "profile", action: "removeFavorite")
		"/profile/removeFavoriteFromSettings" (controller: "profile", action: "removeFavoriteFromSettings")
		name about: "/about"(controller:"base", action:"about")
		name faqs: "/faqs"(controller:"base", action:"faqs")
		"/search"(controller:"search", action:"index")
		"/admin"(controller:"admin", action:"/index")
		name settings: "/profile/settings"(controller:"profile", action: "settings")
		name landingPage: "/"(controller: "user", action: "index")
		name profileView: "/profile/$username" (controller:"profile", action:"index")
		"404"(controller: "error", action: "error404")
	}
}
