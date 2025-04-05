extends Control
@export var progres_bar:ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progres_bar.max_value =Global.health
	progres_bar.value= Global.health
	Global.hpDec.connect(func(): progres_bar.value= Global.health) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
