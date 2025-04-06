extends AnimatedSprite2D
class_name JammerAnimator


var haircut = [
	"res://animations/hair/H1.tres",
	"res://animations/hair/H2.tres",
	"res://animations/hair/H3.tres",
	"res://animations/hair/H4.tres",
][randi_range(0, 3)]

var body = "res://animations/body.tres"



func _ready() -> void:
	pass
