extends Node2D

var pizza_scene = preload("res://scenes/pizza.tscn")


func _input(event):
	if event.is_action_pressed("shoot_meat"):
		print("shoot_meat")
		shoot(global.pizza.MEAT)
		
	if event.is_action_pressed("shoot_vegan"):
		print("shoot_vegan")
		shoot(global.pizza.VEGAN)
		

func shoot(type):
	var mouse_pos = get_global_mouse_position()
	var pizza:Pizza = pizza_scene.instantiate()
	get_tree().root.add_child(pizza)
		
	pizza.global_position = get_parent().global_position

	pizza.pizza = global.pizza.MEAT
	pizza.direction = mouse_pos - get_parent().global_position
	
