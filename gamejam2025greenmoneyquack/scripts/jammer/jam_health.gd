extends Node2D
class_name JamHealth

@export var health := 1
@export var pizza: int = global.pizza.MEAT

func hit():
	health -= 1
	if (health == 0):
		get_parent().die()
