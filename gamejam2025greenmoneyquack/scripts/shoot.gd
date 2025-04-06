extends Node2D

var pizza_scene = preload("res://scenes/pizza.tscn")
@onready var animation = $"../AnimatedSprite2D"


func _input(event):
	if event.is_action_pressed("shoot_meat"):
		print("shoot_meat")
		animation.shoot(global.pizza.MEAT)
		shoot(global.pizza.MEAT)
		
	if event.is_action_pressed("shoot_vegan"):
		print("shoot_vegan")
		animation.shoot(global.pizza.VEGAN)
		shoot(global.pizza.VEGAN)
		

func shoot(type):
	Global.emit_shoot()
	var mouse_pos = get_global_mouse_position()
	var pizza:Pizza = pizza_scene.instantiate()
	get_tree().root.add_child(pizza)
		
	pizza.global_position = get_parent().global_position

	pizza.pizza = type
	pizza.direction = mouse_pos - get_parent().global_position
	
