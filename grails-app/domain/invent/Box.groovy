package invent

class Box {
	Long id
	String boxNumber

	static hasMany = [items: Item]
    static constraints = {
    }

	String toString() {
		"$boxNumber"
	}
}
