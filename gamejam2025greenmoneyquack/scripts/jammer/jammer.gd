extends Node2D
class_name Jammer

@export var pizza := global.pizza.MEAT

func die():
	queue_free()
