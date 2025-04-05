extends Node2D
class_name JamHealth

@export var maxHealth := 1
var health
var type = global.pizza.MEAT

func _ready() -> void:
	if get_parent():
		type = get_parent().pizza
	health = maxHealth

func hit(pizza: Pizza):
	print("hit")
	if type == pizza.pizza:
		correct()
	else:
		wrong()

func correct():
	print(health)
	health -= 1
	if health < 1:
		get_parent().die()

func wrong():
	pass
