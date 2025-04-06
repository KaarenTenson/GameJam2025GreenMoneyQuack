extends Area2D

@export var path: String = "res://scenes/win_screen.tscn"

func _on_area_entered(area: Area2D) -> void:
	if(area.get_parent() is Player):
		get_tree().change_scene_to_file(path)
