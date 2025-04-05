extends Node2D
class_name Jammer

@export var pizza := global.pizza.MEAT

@onready var game_manager:GameManager = %GameManager

func die():
	game_manager.add_debt()
	queue_free()
	
