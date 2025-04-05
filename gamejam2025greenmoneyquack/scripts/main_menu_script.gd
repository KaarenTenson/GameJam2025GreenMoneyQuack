extends Control

@export var play_button: Button 
@export var settings_button: Button
@export var exit_button: Button 
@onready var settings: Control = $settings

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play_button.pressed.connect(func(): get_tree().change_scene_to_file("res://scenes/main.tscn"))
	settings_button.pressed.connect(func(): settings.visible= !settings.visible)
	exit_button.pressed.connect(func(): get_tree().quit(0))
