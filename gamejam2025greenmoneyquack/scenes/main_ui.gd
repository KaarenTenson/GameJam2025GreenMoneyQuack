extends Control
@export var healt_bar: ProgressBar 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	healt_bar.max_value= Global.health
	healt_bar.value= Global.health
	Global.hpDec.connect(func(): healt_bar.value= Global.health)
