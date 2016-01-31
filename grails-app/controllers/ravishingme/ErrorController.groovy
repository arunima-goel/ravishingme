package ravishingme

class ErrorController {

	def error404() {
		log.info("error404() - params [" + params + "]");
	}
}