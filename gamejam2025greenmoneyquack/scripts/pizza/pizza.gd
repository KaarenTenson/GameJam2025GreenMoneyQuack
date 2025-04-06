extends Node2D
class_name Pizza


#@onready var score_label: Label = $"../CanvasLayer/Control/Label"


var direction: Vector2

var speed: float = 2000.0  # Speed in pixels per second

@export var pizza = global.pizza.MEAT
@export var angularSpeed: float = -30


func set_new_position(fly: Vector2) -> void:
	direction = (fly - position)

func _process(delta: float) -> void:
	if direction != null:
		position += direction.normalized() * speed * delta
		#print(position)
	rotate(angularSpeed * delta)

func _ready() -> void:
	set_new_position(Vector2(1200,0))

func destroy():
	queue_free()
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	Global.add_debt(10)
	Global.emit_missed(global_position)
	destroy()
