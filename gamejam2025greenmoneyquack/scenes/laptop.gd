extends AnimatedSprite2D
@export var animation_player: AnimationPlayer 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play("default")
	animation_player.play("jammer_sway")
