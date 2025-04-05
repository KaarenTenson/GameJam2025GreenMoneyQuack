extends Node2D

@export var move_speed:int = 50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#transform
	move_speed+=delta
	position+=(Vector2(0, 1) * delta * move_speed)
