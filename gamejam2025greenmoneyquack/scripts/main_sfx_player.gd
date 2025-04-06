extends AudioStreamPlayer

@export var streams : Array[AudioStream]
enum CLIPS {EAT, HIT_WALL, HIT_INCORRECT, MISSED}
func play_track(id : int) -> void:
	stop()
	stream = streams[id]
	play()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	Global.hitCorrect.connect(func (pos): play_track(CLIPS.EAT))
	Global.hitWall.connect(func (pos): play_track(CLIPS.HIT_WALL))
	Global.hitFalse.connect(func (pos): play_track(CLIPS.HIT_INCORRECT))
	Global.missed.connect(func (pos): play_track(CLIPS.MISSED))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
