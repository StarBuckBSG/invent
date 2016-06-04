package invent

import grails.plugin.springsecurity.annotation.Secured

@Secured(value=["hasRole('ROLE_USER')"])
class SearchController {
	
	def index() {
		log.info "query params: ${params.query}"
		String query = params.query
		
		def dbQuery = Item.where {
			name =~ "%${query}%" | description =~ "%${query}%" | ourPartNumber =~ "%${query}%" | manufacturerPartNumber =~ "%${query}%" | suppliersPartNumber =~ "%${query}%" | manufacturerName =~ "%${query}%"  | modelNumber =~ "%${query}%"
		}
		def searchResult = dbQuery.list() ?: []
		log.info "RESULT $searchResult"
		render(view: "index", model: [searchResult:searchResult, query:query])
	}
}
