extends Node



func _input(event):
	if event.is_action_pressed("shoot_meat"):
		print("shoot_meat")
		var mouse_pos:Vector2 = get_viewport().get_mouse_position()
		
		
	if event.is_action_pressed("shoot_vegan"):
		print("shoot_vegan")

func shoot(mouse:Vector2):
	pass
