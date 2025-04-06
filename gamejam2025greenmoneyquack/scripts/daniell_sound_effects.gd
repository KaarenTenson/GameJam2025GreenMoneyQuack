extends AudioStreamPlayer
enum CLIPS {ÄRA_LIIGUTA, JÄRGMISE_KORRANI, KORVPALLI_TIIMI, TEID_ON_AINA_ROHKEM, JAH_ARUSAADAV}

@export var streams : Array[AudioStream]

func play_track(id : int) -> void:
	stop()
	stream = streams[id]
	play()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	Global.debtInc.connect(func(): play_track(randi_range(0, 3)))
	Global.hpDec.connect(func(): play_track(CLIPS.JAH_ARUSAADAV))
