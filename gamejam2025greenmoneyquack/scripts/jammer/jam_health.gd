extends Node2D
class_name JamHealth

@export var maxHealth := 1
var health
var type = get_parent().pizza

func _ready() -> void:
	health = maxHealth

func hit(pizza: Pizza):
	if type == pizza.pizza:
		correct()
	else:
		wrong()

func correct():
	health -= 1
	if health < 1:
		get_parent().die()

func wrong():
	pass
