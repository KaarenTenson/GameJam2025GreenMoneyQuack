extends AudioStreamPlayer

@export var streams : Array[AudioStream]
enum CLIPS {EAT}
func play_track(id : int) -> void:
	stop()
	stream = streams[id]
	play()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	Global.hitCorrect.connect(func (_pos): play_track(CLIPS.EAT))
