extends CharacterBody2D

@export var health = 5
var iframes = 100
var wasDamaged = false

const SPEED = 600
const JUMP_VELOCITY = -900
var isLaser = false
var isLaserB = false
var isLaserM = false
var isLaserH = false
var isLaserR = false
var isLaserL = false

signal enterLaser(body)
signal exitLaser(body)

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if wasDamaged == true:
		iframes -= 1
		if iframes < 1:
			wasDamaged = false
			iframes = 100
	if wasDamaged == true and iframes > 98:
		$PlayerCam/HitAnim.play("default")
		$AudioStreamPlayer2D.play()
		if iframes == 100:
			health -= 1

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if Input.is_action_pressed("ui_left"):
		$PlayerSprite.flip_h = 1
		$PlayerCam.rotation_degrees = -20
	elif Input.is_action_pressed("ui_right"):
		$PlayerSprite.flip_h = 0
		$PlayerCam.rotation_degrees = 20
	else:
		$PlayerCam.rotation_degrees = 0
	if Input.is_action_just_pressed("ui_down"):
		gravity = ProjectSettings.get_setting("physics/2d/default_gravity") * 10
	if is_on_floor():
		gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
	
	if self.position.y > 3000:
		self.position.y = 721
		self.position.x = 0
		
	if health == 0:
		get_tree().change_scene_to_file("res://Scenes/gameOver.tscn")
	
	$CanvasLayer/HealthBar.text = str(health)
	print(health)

	move_and_slide()

func _on_obstacles_laser():
	if isLaser == true and wasDamaged == false:
		wasDamaged = true
		health -= 1


func _on_obstacles_laser_b():
	if isLaserB == true and wasDamaged == false:
		wasDamaged = true
		health -= 1


func _on_obstacles_laser_h():
	if isLaserH == true and wasDamaged == false:
		wasDamaged = true


func _on_obstacles_laser_l():
	if isLaserL == true and wasDamaged == false:
		wasDamaged = true
		health -= 1


func _on_obstacles_laser_m():
	if isLaserM == true and wasDamaged == false:
		wasDamaged = true
		health -= 1


func _on_obstacles_laser_r():
	if isLaserR == true and wasDamaged == false:
		wasDamaged = true
		health -= 1


func _on_laser_body_entered(body):
	if body == self:
		isLaser = true
func _on_laser_body_exited(body):
	if body == self:
		isLaser = false

func _on_laser_b_body_entered(body):
	if body == self:
		isLaserB = true
func _on_laser_b_body_exited(body):
	if body == self:
		isLaserB = false

func _on_laser_m_body_entered(body):
	if body == self:
		isLaserM = true
func _on_laser_m_body_exited(body):
	if body == self:
		isLaserM = false

func _on_laser_h_body_entered(body):
	if body == self:
		isLaserH = true
func _on_laser_h_body_exited(body):
	if body == self:
		isLaserH = false

func _on_laser_l_body_entered(body):
	if body == self:
		isLaserL = true
func _on_laser_l_body_exited(body):
	if body == self:
		isLaserL = false

func _on_laser_r_body_entered(body):
	if body == self:
		isLaserR = true
func _on_laser_r_body_exited(body):
	if body == self:
		isLaserR = false
