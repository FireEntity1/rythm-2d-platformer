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
	
	laserFireH(18.5)
	laserFireB(18.5)
	laserFireR(19.5)
	laserFireL(19.5)
	laserFireL(22)
	laserFire(22.75)
	laserFireR(23.25)
	laserFireM(23.75)
	laserFire(24.5)
	
	
	
func laserFire(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.2
	if beat > firebeat and beat < firebeat + 1:
		$Laser.play("default")
	if beat > firebeat + 1 and beat < firebeat + 2:
		laser.emit()
func laserFireL(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserL.play("default")
	if beat < firebeat+1 and beat < firebeat+2:
		pass
	if beat > firebeat + 1 and beat < firebeat + 2:
		laserL.emit()
func laserFireR(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserR.play("default")
	if beat > firebeat + 1 and beat < firebeat + 2:
		laserR.emit()
func laserFireB(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserB.play("default")
	if beat > firebeat + 1 and beat < firebeat + 2:
		laserB.emit()
func laserFireM(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserM.play("default")
	if beat > firebeat + 1 and beat < firebeat + 2:
		laserM.emit()
func laserFireH(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserH.play("default")
	if beat > firebeat + 1 and beat < firebeat + 2:
		laserH.emit()

