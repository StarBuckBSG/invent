package invent


import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional


@Transactional(readOnly = true)
@Secured(value=["hasRole('ROLE_USER')"])
class BoxController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Box.list(params), model:[boxCount: Box.count()]
    }

	
    def show(Box box) {
        respond box
    }

    def create() {
        respond new Box(params)
    }

    @Transactional
    def save(Box box) {
        if (box == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (box.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond box.errors, view:'create'
            return
        }

        box.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'box.label', default: 'Box'), box.id])
                redirect box
            }
            '*' { respond box, [status: CREATED] }
        }
    }

    def edit(Box box) {
        respond box
    }

    @Transactional
    def update(Box box) {
        if (box == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (box.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond box.errors, view:'edit'
            return
        }

        box.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'box.label', default: 'Box'), box.id])
                redirect box
            }
            '*'{ respond box, [status: OK] }
        }
    }

    @Transactional
    def delete(Box box) {

        if (box == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        box.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'box.label', default: 'Box'), box.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'box.label', default: 'Box'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
