extends Node2D
class_name generator


@export var spawn_chance = 0.7
@export var vegan_chance = 0.2
var jammer_scene = preload("res://scenes/jammer.tscn")
var PlayerX=0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	decide()


func decide():
	var spawned = randf() <= spawn_chance
	if !spawned:
		return
	
	var jammer:Jammer = jammer_scene.instantiate()
	$"../../Jammijad".add_child(jammer)
	jammer.global_position = global_position
	
	var vegan = randf() < vegan_chance
	if vegan:
		jammer.pizza = global.pizza.VEGAN
	else: jammer.pizza = global.pizza.MEAT
	
	if PlayerX >= jammer.global_position.x:
		jammer.apply_scale(Vector2(-1, 1))
		#print(jammer.scale)
		
	#var vriable =  elu_valikud[rng.rand_weighted(weights)]
		
	jammer.maxHealth = 1
	#jammer.get_child(0).health = vriable
	#print(jammer.get_child(0).health)

	
<<<<<<< HEAD
	
	print("Generated " + str(jammer.pizza))
=======
	$"../../Jammijad".add_child(jammer)
	#print("Generated " + str(jammer.pizza))
>>>>>>> d4a54a8df3863c2a883c165ac4e0adaeccd631eb
	queue_free()
	
	
