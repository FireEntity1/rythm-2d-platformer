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



func _physics_process(delta):
	beat += 0.02762666667
	
	laserFireH(18)
	laserFireB(19)
	laserFireL(20)
	
	laserFireL(22)
	laserFire(23)
	laserFireR(24)
	laserFireH(25)
	
	laserFire(26)
	laserFireL(27)
	laserFireB(28)
	laserFire(29)
	laserFireH(29)
	
	laserFire(34)
	laserFireR(35)
	laserFireB(36)
	
	laserFireL(38)
	laserFireR(39)
	laserFireB(40)
	laserFireH(41)
	
	laserFire(42)
	laserFireR(43)
	laserFireL(43)
	laserFireH(44)
	laserFire(44)
	laserFireM(45)
	
	laserFireL(50)
	laserFireR(51)
	laserFire(52)
	laserFireH(53)
	laserFireB(54)
	laserFireL(55)
	laserFireR(56)
	laserFire(57)
	laserFireM(58)
	laserFireL(59)
	laserFireR(60)
	laserFire(61)
	laserFireM(62)
	laserFireH(63)
	laserFireR(64)
	laserFire(65)
	laserFireL(66)
	laserFireM(67)
	laserFireH(68)
	laserFire(69)
	laserFireB(70)
	laserFireL(71)
	laserFire(72)
	laserFireR(73)
	laserFireB(74)
	laserFireM(75)
	laserFireH(76)
	laserFireL(77)
	laserFire(78)
	laserFireM(79)
	laserFireR(82)
	laserFireL(82)
	laserFireH(82)
	laserFireB(82)
	
	
	
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
