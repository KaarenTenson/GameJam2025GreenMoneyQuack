extends Node2D
class_name Player

@export var move_speed:float = 50
@export var accseleration:float = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#transform
	move_speed+=(delta*accseleration)
	position+=(Vector2(0, 1) * delta * move_speed)
func start_shooting():
	Global.reset()
	$shoot.start_shooting()
