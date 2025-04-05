extends Node2D
class_name Jammer

@export var pizza := global.pizza.MEAT

#@onready var game_manager:GameManager = %GameManager

func die():
	#game_manager.add_debt()
	print("Jammer Die")
	queue_free()
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	die()
