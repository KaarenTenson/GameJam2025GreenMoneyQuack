extends Node2D
class_name Pizza


#@onready var score_label: Label = $"../CanvasLayer/Control/Label"


var direction: Vector2

var speed: float = 200.0  # Speed in pixels per second

@export var pizza = global.pizza.MEAT


func set_new_position(fly: Vector2) -> void:
	direction = (fly - position)

func _process(delta: float) -> void:
	if direction != null:
		position += direction.normalized() * speed * delta
		#print(position)

func _ready() -> void:
	
	set_new_position(Vector2(1200,0))

func destroy():
	queue_free()
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	Global.add_debt()
	destroy()
