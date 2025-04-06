extends Area2D
class_name Aeglustaja

@export var milleks_aeglustada = 0

@export var oota_klick = false

var acc = 20

var ootab_klick = false

var player:Player

func _on_area_entered(area: Area2D) -> void:
	
		
		
	if(area.get_parent() is Player):
		player = area.get_parent()
		if oota_klick:
			acc = player.accseleration
			player.accseleration = 0
			player.move_speed = milleks_aeglustada
			ootab_klick = true
		else:
			player.move_speed = milleks_aeglustada

func _input(event:InputEvent) -> void:
	if event is InputEventMouseButton:
		if ootab_klick:
			set_acc(acc)

func set_acc(temp):
	player.accseleration = acc
	
