extends Node2D

var beat = 0

func _ready():
	pass



func _process(delta):
	beat += 0.010055
	
	laserFire(18)
	laserFire(20)
	laserFire(22)
	laserFire(24)
	
	# print(beat)
	
func laserFire(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 0.5
	if beat > firebeat and beat < firebeat + 1:
		$Laser.play("default")
	
	
func laserFireLeft(firebeat):
	if beat > firebeat + 2:
		pass
	firebeat -= 2
	if beat > firebeat and beat < firebeat + 1 and $LaserEdge.modulate.a < 0.8:
		$LaserEdge.modulate.a += 0.001
	if beat > firebeat + 2 and beat < firebeat + 4 and $LaserEdge.modulate.a < 1:
		$LaserEdge.modulate.a += 0.04
	if beat > firebeat + 4 and $LaserEdge.modulate.a > 0:
		$LaserEdge.modulate.a -= 0.04

