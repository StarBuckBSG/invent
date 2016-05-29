package invent

class Item {
	Long id
	String name
	String description
	Integer quantity = 0
	
	String serialNumber
	String manufacturerSerialNumber
	String suppliersSerialNumber
	
	static belongsTo = [box: Box]
	
    static constraints = {
		description nullable: true
		serialNumber nullable: true
		manufacturerSerialNumber nullable: true
		suppliersSerialNumber nullable: true
    }
	
	String toString() {
		"$name"
	}
}
