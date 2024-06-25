extends CharacterBody2D


const SPEED = 600
const JUMP_VELOCITY = -900

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if Input.is_action_pressed("ui_left"):
		$PlayerSprite.flip_h = 1
		$PlayerCam.rotation_degrees = -10
	elif Input.is_action_pressed("ui_right"):
		$PlayerSprite.flip_h = 0
		$PlayerCam.rotation_degrees = 10
	else:
		$PlayerCam.rotation_degrees = 0
		
	if Input.is_action_just_pressed("ui_down"):
		gravity = ProjectSettings.get_setting("physics/2d/default_gravity") * 10
	if is_on_floor():
		gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

	move_and_slide()
