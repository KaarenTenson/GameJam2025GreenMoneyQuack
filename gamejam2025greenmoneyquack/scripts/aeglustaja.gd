extends Area2D
class_name Aeglustaja

@export var milleks_aeglustada = 0

func _on_area_entered(area: Area2D) -> void:
	if(area.get_parent() is Player):
		area.get_parent().move_speed = milleks_aeglustada
