extends Area2D
class_name PizzaHitbox

func _on_area_entered(area: Area2D) -> void:
	#print("collided")
	if area is JamHitBox:
		area.hit(get_parent())
	elif area is wall:
		print("wall")
		Global.add_debt()
		get_parent().destroy()
	else:
		print("!!!!")
