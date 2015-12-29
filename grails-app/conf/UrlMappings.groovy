class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		

        "500"(view:'/error')
		"/profile/$username?" (controller: "profile", action: "index")
		"/profile/update" (controller: "profile", action: "update")
		"/about"(controller:"base", action:"about")
		"/search"(controller:"search", action:"/index")
		name landingPage: "/"(controller: "user", action: "index")
		name profileView: "/profile/$username" (controller:"profile", action:"index")
		name faqs: "/faqs"(view:"/faqs")
		name settings: "/profile/settings"(controller:"profile", action: "settings")
		
	}
}
