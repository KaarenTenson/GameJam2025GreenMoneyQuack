extends Area2D
class_name PizzaHitbox

func _on_area_entered(area: Area2D) -> void:
	#print("collided")
	if area is JamHitBox:
		area.hit(get_parent())
	elif area is wall_area:
		Global.emit_hitWall(global_position)
		print("wall")
		Global.add_debt(200)
		get_parent().destroy()
	else:
		print("!!!! pizza not hit jammer or wall")
