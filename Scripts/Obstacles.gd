extends Node2D

var beat = 0
var inLaser = false

const hitOffset = 1.9

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
	
	#Predrop
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
	laserFireH(29.5)
	
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
	#Buildup
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
	#DROP 1
	laserFire(83)
	laserFireL(84)
	laserFireR(85)
	laserFireM(86)
	laserFireB(87)
	laserFireH(88)
	laserFireL(89)
	laserFire(90)
	laserFireM(91)
	laserFireR(92)
	laserFire(93)
	laserFireL(94)
	laserFireB(95)
	laserFireM(96)
	laserFireH(97)
	laserFireL(98)
	laserFire(99)
	laserFireR(100)
	laserFireH(101)
	laserFireM(102)
	laserFireB(103)
	laserFire(104)
	laserFireL(105)
	laserFireR(106)
	laserFireM(107)
	laserFireB(108)
	laserFireH(109)
	laserFireL(110)
	laserFire(111)
	laserFireM(112)
	laserFireR(113)
	laserFire(114)
	#Postdrop
	laserFireH(114)
	laserFireB(115)
	laserFireL(116)
	
	laserFireL(118)
	laserFire(119)
	laserFireR(120)
	laserFireH(121)
	
	laserFire(122)
	laserFireL(123)
	laserFireB(124)
	laserFire(125)
	laserFireH(125.5)
	
	laserFire(130)
	laserFireR(131)
	laserFireB(132)
	
	laserFireL(134)
	laserFireR(135)
	laserFireB(136)
	laserFireH(137)
	
	laserFire(138)
	laserFireR(139)
	laserFireL(140)
	laserFireH(141)
	laserFire(142)
	laserFireM(142.5)
	# Intensity up
	laserFire(146)
	laserFireL(148)
	laserFireR(148)
	laserFireB(150)
	laserFireH(150)
	laserFire(152)
	laserFireM(152)
	laserFireR(154)
	laserFireH(154)
	
	
func laserFire(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$Laser.play("default")
	if beat > firebeat + hitOffset and beat < firebeat + 2.5:
		laser.emit()
func laserFireL(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserL.play("default")
	if beat < firebeat+1 and beat < firebeat+2:
		pass
	if beat > firebeat + hitOffset and beat < firebeat + 2.5:
		laserL.emit()
func laserFireR(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserR.play("default")
	if beat > firebeat + hitOffset and beat < firebeat + 2.5:
		laserR.emit()
func laserFireB(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserB.play("default")
	if beat > firebeat + hitOffset and beat < firebeat + 2.5:
		laserB.emit()
func laserFireM(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserM.play("default")
	if beat > firebeat + hitOffset and beat < firebeat + 2.5:
		laserM.emit()
func laserFireH(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1
	if beat > firebeat and beat < firebeat + 1:
		$LaserH.play("default")
	if beat > firebeat + hitOffset and beat < firebeat + 2.5:
		laserH.emit()
