extends Node2D

var beat = 0
var inLaser = false

signal laser
signal laserB
signal laserM
signal laserH
signal laserL
signal laserR

func _ready():
	pass



func _process(delta):
	beat += 0.010055
	
	laserFireB(18)
	laserFireH(18.5)
	laserFireM(19)
	laserFireR(19.5)
	laserFireL(19.5)
	
	
func laserFire(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.2
	if beat > firebeat and beat < firebeat + 1:
		$Laser.play("default")
func laserFireL(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserL.play("default")
	if beat < firebeat+1 and beat < firebeat+2:
		pass
func laserFireR(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserR.play("default")
func laserFireB(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserB.play("default")
func laserFireM(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserM.play("default")
func laserFireH(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserH.play("default")




func _on_player_enter_laser(body):
	if body == get_node("Player"):
		print("entered!!")
		inLaser = true


func _on_player_exit_laser(body):
	print("exited!!")
	inLaser = false
