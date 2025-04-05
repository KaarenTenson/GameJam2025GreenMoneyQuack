extends AnimatedSprite2D
class_name JammerAnimator

@onready var paths = [
	[
		"res://animations/Mjammers/1.tres",
		"res://animations/Mjammers/2.tres",
	],
	[
		"res://animations/Vjammers/1.tres",
		"res://animations/Vjammers/2.tres",
	],
][get_parent().pizza]

@onready var path = paths[randi_range(0, len(paths) - 1)]

@onready var tres: SpriteFrames = load(path)

func _ready() -> void:
	sprite_frames = tres
