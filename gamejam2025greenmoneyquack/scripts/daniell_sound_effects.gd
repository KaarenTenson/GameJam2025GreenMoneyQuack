extends AudioStreamPlayer
enum CLIPS {ÄRA_LIIGUTA, JAH_ARUSAADAV, JÄRGMISE_KORRANI, KORVPALLI_TIIMI, TEIN_ON_AINA_ROHKEM}

@export var streams : Array[AudioStream]

func play_track(id : int) -> void:
	stop()
	stream = streams[id]
	play()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.debtInc.connect(func(): play_track(CLIPS.ÄRA_LIIGUTA))
	Global.hpDec.connect(func(): play_track(CLIPS.JAH_ARUSAADAV))
