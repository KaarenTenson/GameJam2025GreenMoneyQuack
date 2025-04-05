extends Area2D
class_name PizzaHitbox

func _on_area_entered(area: Area2D) -> void:
	#print("collided")
	if area is JamHitBox:
		area.hit(get_parent())
