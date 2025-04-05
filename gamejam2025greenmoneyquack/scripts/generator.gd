extends Node2D
class_name generator

var jammer_scene = preload("res://scenes/jammer.tscn")

@export var spawn_chance = 0.7
@export var vegan_chance = 0.2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	decide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func decide():
	var jammer:Jammer = jammer_scene.instantiate()
	jammer.global_position = global_position
	$"../../Jammijad".add_child(jammer)
	print("Spawn ")

func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	decide()
