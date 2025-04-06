extends Node
class_name JammerAnimator

@onready var sprites: Array[AnimatedSprite2D] = [
	$hair,
	$body,
	$shirt,
]

var haircut = [
	"res://animations/hair/H1.tres",
	"res://animations/hair/H2.tres",
	"res://animations/hair/H3.tres",
	"res://animations/hair/H4.tres",
][randi_range(0, 3)]

var bodyanim = "res://animations/body.tres"

@onready var shirtcolor = [
	[
		"res://animations/Mjammers/S1.tres",
		"res://animations/Mjammers/S2.tres",
		"res://animations/Mjammers/S3.tres",
	][randi_range(0, 2)],
	"res://animations/Vjammers/S1.tres",
][get_parent().get_parent().pizza]

func _ready() -> void:
	sprites[0].sprite_frames = load(haircut)
	#sprites[1].sprite_frames = load(bodyanim)
	sprites[2].sprite_frames = load(shirtcolor)

func change(s : String):
	for anim in sprites:
		anim.play(s)


func _on_body_animation_finished() -> void:
	if(sprites[1].animation == "Happy"):
		get_parent().get_parent().die()
	else:
		change("Waiting")
