class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		

        "/"(controller: "user", action: "index")
		"500"(view:'/error')
		"/profile/$username?" (controller: "profile", action: "index")
		name profileView: "/profile/$username" (controller:"profile", action:"index")
		name about: "/about"(view:"/about")
		name faqs: "/faqs"(view:"/faqs")
		name search: "/search"(view:"/search/index")
		name profile: "/profile"(view:"/profile/index")
		name profileSettings: "/profile/settings"(view:"/profile/settings")
		
	}
}
