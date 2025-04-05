extends Node
class_name global

var score:int=0
var debt = 0
signal debtInc

enum pizza {
	MEAT,
	VEGAN,
}


func add_debt():
	debtInc.emit()
	debt += 1
	print(debt)
