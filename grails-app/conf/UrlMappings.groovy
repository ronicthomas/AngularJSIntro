class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/app")
        "/index"(view:"/index")
        "/controller"(view:"/controller")
        "/demo"(view:"/demo")
        "/routing"(view:"/routing")
        "/filters"(view:"/filters")
        "/directives"(view:"/directives")
        "/ctrl-demo"(view:"/controller")
        "500"(view:'/error')
	}
}
