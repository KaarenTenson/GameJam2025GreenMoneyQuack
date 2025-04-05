extends Node2D
class_name Pizza

var direction: Vector2
var speed: float = 200.0  # Speed in pixels per second

func set_new_position(fly: Vector2) -> void:
	direction = (fly - position)

func _process(delta: float) -> void:
	if direction != null:
		position += direction.normalized() * speed * delta
		print(position)
	
