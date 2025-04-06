extends VBoxContainer
@onready var label: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text= "DEBT: "+ str(Global.debt) + "€"
	Global.reset()
