extends Node2D

var beat = 0

func _ready():
	pass



func _process(delta):
	beat += 0.010055
	
	laserFireB(18)
	laserFireH(18.5)
	laserFireM(19)
	laserFireR(19.5)
	laserFireL(19.5)
	


	
	print(beat)
	
func laserFire(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.3
	if beat > firebeat and beat < firebeat + 1:
		$Laser.play("default")
		
	
	
func laserFireL(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.5
	if beat > firebeat and beat < firebeat + 1:
		$LaserL.play("default")
		
func laserFireR(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.5
	if beat > firebeat and beat < firebeat + 1:
		$LaserR.play("default")

func laserFireB(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.5
	if beat > firebeat and beat < firebeat + 1:
		$LaserB.play("default")

func laserFireM(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.5
	if beat > firebeat and beat < firebeat + 1:
		$LaserM.play("default")
		
func laserFireH(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 1.5
	if beat > firebeat and beat < firebeat + 1:
		$LaserH.play("default")

