package invent

class Item {
	Long id
	String name
	String description
	Integer quantity = 0
	
	String ourPartNumber
	String manufacturerPartNumber
	String suppliersPartNumber
	String manufacturerName
	String modelNumber
	String listPrice
	String sellPrice
	
	static belongsTo = [box: Box]
	
    static constraints = {
		description nullable: true
		ourPartNumber nullable: true
		manufacturerPartNumber nullable: true
		suppliersPartNumber nullable: true
		manufacturerName nullable: true
		modelNumber nullable: true
		listPrice nullable: true
		sellPrice nullable: true
		
    }
	
	String toString() {
		"$name"
	}
}
