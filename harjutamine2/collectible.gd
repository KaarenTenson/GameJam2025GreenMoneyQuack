extends StaticBody2D
class_name collectible
@onready var animation_player: AnimationPlayer = $AnimationPlayer
var type:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_player.play("bounce")

func get_type()->String:
	return type
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
