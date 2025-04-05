extends Area2D
class_name JamHitBox

@export var health: JamHealth


func hit(pizza: Pizza):
	print("Hit")
	#if health:
	health.hit(pizza)
	
	pizza.destroy()
