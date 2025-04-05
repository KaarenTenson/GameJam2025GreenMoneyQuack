extends Node2D
class_name generator

var jammer_scene = preload("res://scenes/jammer.tscn")

@export var spawn_chance = 0.7
@export var vegan_chance = 0.2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#decide()
	pass # Replace with function body.


func decide():
	var spawned = randf() < spawn_chance
	if !spawned:
		return
	
	var jammer:Jammer = jammer_scene.instantiate()
	jammer.global_position = global_position
	
	var vegan = randf() < vegan_chance
	if vegan:
		jammer.pizza = global.pizza.VEGAN
	else: jammer.pizza = global.pizza.MEAT
	
	
	$"../../Jammijad".add_child(jammer)
	print("Generated " + str(jammer.pizza))

func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	decide()
	queue_free()
