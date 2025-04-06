extends AnimatedSprite2D

enum index{
	Idle,
	Throw_L,
	Throw_R,
}

func shoot(pizza):
	if pizza == Global.pizza.MEAT:
		right()
	else:
		left()

func right():
	play("Throw_R")

func left():
	play("Throw_L")


func _on_animation_finished() -> void:
	play("Idle")
