extends Area2D

func _on_area_entered(area: Area2D) -> void:
	if area is JamHitBox:
		area.hit(get_parent())
