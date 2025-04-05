extends Node

class_name GameManager

@onready var score_label: Label = $"../CanvasLayer/Control/Label"

func _ready() -> void:
	$"../CanvasLayer/Control/Label2".text = "Health: " + str(Global.health)
	Global.debtInc.connect(add_debt)
	Global.hpDec.connect(dec_health)

func add_debt():
	score_label.text = "Debt: " + str(Global.debt)
	
func dec_health():
	$"../CanvasLayer/Control/Label2".text = "Health: " + str(Global.health)
