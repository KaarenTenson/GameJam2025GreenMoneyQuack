extends Node
class_name global

var score:int=0
var debt = 0
var health = 3
signal debtInc
signal hpDec

enum pizza {
	MEAT,
	VEGAN,
}


func add_debt():
	debt += 1
	debtInc.emit()
	#print(debt)
	
func decrease_health():
	health-=1
	if (health <= 0):
		get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")
	hpDec.emit()
