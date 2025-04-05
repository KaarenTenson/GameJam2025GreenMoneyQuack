extends Area2D
class_name JamHitBox

@export var health: JamHealth


func hit(pizza: Pizza):
	if health:
		health.hit(pizza)
	
	pizza.queue_free()
