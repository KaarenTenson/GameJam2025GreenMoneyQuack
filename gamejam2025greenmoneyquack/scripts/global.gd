extends Node
class_name global

var score:int=0
var debt = 0
var maxhealth = 3
var health = maxhealth

var pizzacounter = 0

signal debtInc
signal hpDec
signal hitWall(arg:Vector2)
signal hitCorrect(arg:Vector2)
signal hitFalse(arg:Vector2)
signal missed(arg:Vector2)
signal shoot

enum pizza {
	MEAT,
	VEGAN,
}


func add_debt(amount):
	pizzacounter = 0
	debt += amount
	debtInc.emit()
	#print(debt)
	
func decrease_health():
	health-=1
	pizzacounter = 0
	if (health <= 0):
		get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")
	hpDec.emit()
	
func reset():
	health=3
	pizzacounter = 0
	hpDec.emit()
	
func count_pizzas():
	if pizzacounter > 4:
		if (health < maxhealth):
			health+=1
			hpDec.emit()
			pizzacounter = 0
			
	pizzacounter+=1

func emit_hitWall(position:Vector2):
	print("emit hitWall")
	hitWall.emit(position)

func emit_hitFalse(position:Vector2):
	print("emit hitFalse")
	hitFalse.emit(position)

func emit_hitCorrect(position:Vector2):
	print("emit hitCorrect")
	hitCorrect.emit(position)

func emit_missed(position:Vector2):
	print("emit missed")
	missed.emit(position)

func emit_shoot():
	print("emit shoot")
	shoot.emit()
