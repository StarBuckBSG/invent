package invent

class SearchController {
	
	def index() {
		log.info "query params: ${params.query}"
		String query = params.query
		
		def dbQuery = Item.where {
			name =~ "%${query}%" | description =~ "%${query}%"
		}
		def searchResult = dbQuery.list() ?: []
		log.info "RESULT $searchResult"
		render(view: "index", model: [searchResult:searchResult])
	}
}
