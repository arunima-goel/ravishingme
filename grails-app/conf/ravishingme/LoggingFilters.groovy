package ravishingme

import org.apache.log4j.MDC;

class LoggingFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
				MDC.clear()
				MDC.put("sessionId", "[$session.id]")
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
