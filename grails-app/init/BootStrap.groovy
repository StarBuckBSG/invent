import org.apache.tools.ant.types.Quantifier

import grails.util.Environment;
import invent.*

class BootStrap {

    def init = { servletContext ->
		
		
		
		if (Environment.isDevelopmentMode()) {
			log.info "Injecting some test Boxes and Items for development"
			
			Box b1 = new Box(boxNumber: "Box 1").save(failOnError:true)
			Box b2 = new Box(boxNumber: "Box 2").save(failOnError:true)
			
			Item i1 = new Item(
				name: 'item one',
				description: 'Main board',
				quantity: 1,
				serialNumber: 'SN1', box:b1).save(failOnError:true)
		}

			
			
		
    }
	
    def destroy = {
    }
}
