extends Node

class_name GameManager

@onready var score_label: Label = $"../CanvasLayer/Control/Label"

func _ready() -> void:
	Global.debtInc.connect(add_debt)
	add_debt()

func add_debt():
	score_label.text = "Debt: " + str(Global.debt)
	
