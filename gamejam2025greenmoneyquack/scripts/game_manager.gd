extends Node

class_name GameManager

@onready var score_label: Label = $"../CanvasLayer/Control/Label"

func _ready() -> void:
	Global.reset()
	Global.debtInc.connect(add_debt)

func add_debt():
	score_label.text = "Debt: " + str(Global.debt)
	
