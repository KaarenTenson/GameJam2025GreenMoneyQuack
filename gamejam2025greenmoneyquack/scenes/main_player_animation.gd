extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.reset()
	
	print(Global.health)
	play("zoom_in")
