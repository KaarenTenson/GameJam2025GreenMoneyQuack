extends Area2D

@export var ani_player: AnimationPlayer
@export var path: String = "res://scenes/win_screen.tscn"

func _on_area_entered(area: Area2D) -> void:
	if(area.get_parent() is Player):
		Global.reset()
		(area.get_parent() as Player).move_speed=0
		(area.get_parent() as Player).accseleration=0
		ani_player.play("end_animation")
		await ani_player.animation_finished
		get_tree().change_scene_to_file(path)
