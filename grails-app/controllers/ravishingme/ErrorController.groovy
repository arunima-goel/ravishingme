package ravishingme

class ErrorController {

	def error404() {
		log.info("error404() - begin - params [" + params + "]");
		//redirect(uri: "/");
		log.info("error404() - end")
	}
}