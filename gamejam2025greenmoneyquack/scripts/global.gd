extends Node
class_name global

var score:int=0
var debt = 0
var maxhealth = 3
var health = maxhealth

var pizzacounter = 0

signal debtInc
signal hpDec

enum pizza {
	MEAT,
	VEGAN,
}


func add_debt():
	pizzacounter = 0
	debt += 10
	debtInc.emit()
	#print(debt)
	
func decrease_health():
	health-=1
	pizzacounter = 0
	if (health <= 0):
		get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")
	hpDec.emit()
	
func reset():
	debt=0
	health=3
	pizzacounter = 0
	
func count_pizzas():
	if pizzacounter > 4:
		if (health < maxhealth):
			health+=1
			hpDec.emit()
			pizzacounter = 0
			
	pizzacounter+=1
