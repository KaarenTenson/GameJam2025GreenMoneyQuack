extends TextureRect
func _ready() -> void:
	$AnimationPlayer.play("default")
	$AnimationPlayer.animation_finished.connect(func(): get_tree().change_scene_to_file("res://scenes/tutorial.tscn"))
"res://art/comic part 1.webp"
