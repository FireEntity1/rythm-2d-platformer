extends TextureButton

var delay = 0
var delayUp = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if delayUp == true:
		delay += 1
	if delay > 60:
		get_tree().change_scene_to_file("res://Scenes/Title.tscn")


func _on_button_up():
	delayUp = true


func _on_button_down():
	$AudioPlayer.play()
