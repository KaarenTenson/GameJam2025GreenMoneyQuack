extends AudioStreamPlayer
enum CLIPS {ÄRA_LIIGUTA, JAH_ARUSAADAV, JÄRGMISE_KORRANI, KORVPALLI_TIIMI, TEIN_ON_AINA_ROHKEM}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.debtInc.connect(func(): play(CLIPS.ÄRA_LIIGUTA))
	Global.hpDec.connect(func(): play(CLIPS.JAH_ARUSAADAV))
