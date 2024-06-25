extends Node2D

var beat = 0

func _ready():
	$Laser.modulate.a = 0



func _process(delta):
	beat += 0.010055
	
	laserFire(19)
	laserFireEdge(20)
	laserFire(24)
	
	print(beat)
	
func laserFire(firebeat):
	firebeat -= 2
	if beat > firebeat and beat < firebeat + 1 and $Laser.modulate.a < 1:
		$Laser.play("default")
		$Laser.modulate.a += 0.04
	if beat > firebeat + 1:
		$Laser.modulate.a -= 0.04
	
func laserFireEdge(firebeat):
	firebeat -= 2
	if beat > firebeat and beat < firebeat + 1 and $LaserEdge.modulate.a < 1:
		$LaserEdge.play("default")
		$LaserEdge.modulate.a += 0.04
	if beat > firebeat + 1:
		$LaserEdge.modulate.a -= 0.04

