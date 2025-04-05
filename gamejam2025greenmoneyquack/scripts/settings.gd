extends Control
@export var exit_button:Button
@onready var sfx_slider: HSlider = $MarginContainer/VBoxContainer/SFX_Container/SFX_Slider
@onready var music_slider: HSlider = $MarginContainer/VBoxContainer/MusicContainer/Music_Slider
var music_bus:int =AudioServer.get_bus_index("Music")
var sfx_bus:int= AudioServer.get_bus_index("SFX") 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	exit_button.pressed.connect(func(): visible=!visible)
	sfx_slider.value= AudioServer.get_bus_volume_linear(sfx_bus)
	music_slider.value= AudioServer.get_bus_volume_linear(music_bus)


func _on_sfx_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_linear(sfx_bus, value)


func _on_music_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_linear(music_bus, value)
