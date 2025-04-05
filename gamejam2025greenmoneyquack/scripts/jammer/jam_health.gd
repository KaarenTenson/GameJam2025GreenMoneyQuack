extends Node2D
class_name JamHealth

@onready var animator: JammerAnimator = $"../AnimatedSprite2D"
var health
var type = global.pizza.MEAT

func _ready() -> void:
	if get_parent():
		type = get_parent().pizza
	health = get_parent().maxHealth

func hit(pizza: Pizza):
	#print("hit")
	if type == pizza.pizza:
		correct()
	else:
		wrong()

func correct():
	#print(health)
	health -= 1
	if health < 1:
		animator.play("Happy")
		get_parent().die()

func wrong():
	animator.play("Unhappy")
	Global.decrease_health()
