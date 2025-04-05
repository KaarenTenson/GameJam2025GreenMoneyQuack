extends Node2D
class_name Pizza

var direction: Vector2
@export var speed: float = 200.0  # Speed in pixels per second

@export var pizza = global.pizza.MEAT

func set_new_position(fly: Vector2) -> void:
	direction = (fly - position)
	
	
func _process(delta: float) -> void:
	if direction != null:
		position += direction.normalized() * speed * delta
		#print(position)
func _ready() -> void:
	#set_new_position(Vector2(1200,0))
	#set_new_direction(get_viewport().get_mouse_position())
	pass
	
