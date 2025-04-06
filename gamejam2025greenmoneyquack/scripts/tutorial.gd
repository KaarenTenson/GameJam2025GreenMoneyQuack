extends Control
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

@export var exit_button: Button 
func addsound(node:Node): 
	if node is Button:
		node.pressed.connect(func(): audio_stream_player.play())
	else:
		for el in node.get_children():
			addsound(el)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	addsound(get_tree().root)
	exit_button.pressed.connect(func(): 
		await get_tree().create_timer(0.25).timeout
		get_tree().change_scene_to_file("res://scenes/main2.tscn"))
