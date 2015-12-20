class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
		"500"(view:'/error')
		name about: "/about"(view:"/about")
		name faqs: "/faqs"(view:"/faqs")
		name search: "/search"(view:"/search/index")
		name profile: "/profile"(view:"/profile/index")
		name profileSettings: "/profile/settings"(view:"/profile/settings")
		
	}
}
