extends Node2D
class_name wall_generator

var wall_scene = preload("res://scenes/wall.tscn")

@export var spawn_chance = 0.7

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#decide()
	pass # Replace with function body.


func decide():
	var spawned = randf() <= spawn_chance
	if !spawned:
		return
	
	var walll:wall = wall_scene.instantiate()
	walll.global_position = global_position
	
	
	$"../../Walls".add_child(walll)
	print("Generated wall")



func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	decide()
	queue_free()
