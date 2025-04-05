extends Control
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

@export var play_button: Button 
@export var settings_button: Button
@export var exit_button: Button 
@onready var settings: Control = $settings
func addsound(node:Node): 
	if node is Button:
		node.pressed.connect(func(): audio_stream_player.play())
	else:
		for el in node.get_children():
			addsound(el)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	addsound(get_tree().root)
	play_button.pressed.connect(func(): get_tree().change_scene_to_file("res://scenes/main.tscn"))
	if(settings_button!= null):
		settings_button.pressed.connect(func(): settings.visible= !settings.visible)
	exit_button.pressed.connect(func(): get_tree().quit(0))
