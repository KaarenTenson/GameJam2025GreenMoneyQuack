extends Node

class_name GameManager

var debt = 0

@onready var score_label: Label = $"../CanvasLayer/Control/Label"

func add_debt():
	debt += 1
	score_label.text = "Debt: " + str(debt)
	print(debt)
