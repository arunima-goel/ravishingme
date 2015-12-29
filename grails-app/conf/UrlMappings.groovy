class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		

        name landingPage: "/"(controller: "user", action: "index")
		"500"(view:'/error')
		"/profile/$username?" (controller: "profile", action: "index")
		"/profile/update" (controller: "profile", action: "update")
		name profileView: "/profile/$username" (controller:"profile", action:"index")
		name about: "/about"(controller:"base", action:"about")
		name faqs: "/faqs"(view:"/faqs")
		name search: "/search"(view:"/search/index")
		name profile: "/profile"(view:"/profile/index")
		name settings: "/profile/settings"(controller:"profile", action: "settings")
		
	}
}
