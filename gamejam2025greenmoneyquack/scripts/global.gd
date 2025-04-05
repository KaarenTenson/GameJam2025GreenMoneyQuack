extends Node
class_name global

var score:int=0
var debt = 0

enum pizza {
	MEAT,
	VEGAN,
}


func add_debt():
	debt += 1
	print(debt)
