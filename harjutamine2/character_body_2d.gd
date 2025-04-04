extends CharacterBody2D
@onready var sprite_animatsioon: AnimatedSprite2D = $Sprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
enum {DEF, EES, TAGA, VASAK, PAREM}
var hetke_seisund:=DEF
func muuda_seisund(seisund:int)->void:
	if hetke_seisund==seisund:
		return
	match seisund:
		DEF: sprite_animatsioon.play("default")
		EES: sprite_animatsioon.play("ees")
		TAGA: sprite_animatsioon.play("taga")
		VASAK: sprite_animatsioon.play("vasak")
		PAREM: sprite_animatsioon.play("parem")
	hetke_seisund=seisund
func _physics_process(delta: float) -> void:
	# Add the gravity.

	# Get the input direction_x and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y:=Input.get_axis("ui_up", "ui_down")
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	if(direction_x<0):
		muuda_seisund(VASAK)
	elif(direction_x>0):
		muuda_seisund(PAREM)
	if(direction_y<0):
		muuda_seisund(TAGA)
	elif(direction_y>0):
		muuda_seisund(EES)
	if(direction_x==0 and direction_y==0):
		muuda_seisund(DEF)
	
	
	
	move_and_slide()

	
func _on_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	if(body is collectible):
		Globals.add_item(body.get_type())
		body.queue_free()
		Engine.time_scale=0.1
		await get_tree().create_timer(0.1).timeout
		Engine.time_scale=1
