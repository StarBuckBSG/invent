import org.apache.tools.ant.types.Quantifier

import grails.util.Environment;
import invent.*
import invent.auth.Role
import invent.auth.User
import invent.auth.UserRole;

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
		
		if (Role.findByAuthority('ROLE_ADMIN') == null) {
			log.info "Couldnt find the admin role, populating roles and users."
			
			Role admin = new Role(authority:'ROLE_ADMIN').save(failOnError:true)
			Role user = new Role(authority:'ROLE_USER').save(failOnError:true)
			User adminUser = new User(username: 'admin', password: 'password123').save(failOnError:true)
			
			UserRole userRole = new UserRole(user:adminUser, role: admin).save(failOnError:true)
		}

		
		
    }
	
    def destroy = {
    }
}
