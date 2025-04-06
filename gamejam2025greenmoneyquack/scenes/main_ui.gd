extends Control
@export var healt_bar: ProgressBar 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	healt_bar.value= healt_bar.max_value
	print("health")
	print(healt_bar.value)
	Global.hpDec.connect(func(): 
		print("value chnaged",Global.health)
		healt_bar.value= int(Global.health))
