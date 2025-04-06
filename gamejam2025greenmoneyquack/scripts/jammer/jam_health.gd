extends Node2D
class_name JamHealth

@onready var animator: JammerAnimator = $"../Node/Animations"
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
	Global.emit_hitCorrect(global_position)
	Global.count_pizzas()
	health -= 1
	if health < 1:
		animator.change("Happy")
		get_parent().caught()

func wrong():
	Global.emit_hitFalse(global_position)
	animator.change("Unhappy")
	Global.decrease_health()
