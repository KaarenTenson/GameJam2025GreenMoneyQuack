extends TextureRect
func _ready() -> void:
	$AnimationPlayer.play("default")
	$AnimationPlayer.animation_finished.connect(func(_name): get_tree().change_scene_to_file("res://scenes/tutorial.tscn"))
