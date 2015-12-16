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
		name search: "/search"(view:"/search/index")
		
	}
}
