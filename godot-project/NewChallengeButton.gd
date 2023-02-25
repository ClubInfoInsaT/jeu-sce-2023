extends Node2D

export var lifeTime = 5
var currentTime = 0
var activities = [
	{'name': 'CleanOcean',
	'type' : 'minigame',
	'path': 'res://Scenes/CleanOcean/Levels/LevelTemplate.tscn'}
	]
var selectedActivityID = null
func _ready(): 
	# Associate this pin to a random activity
	randomize()
	selectedActivityID = randi() % len(activities)
	print(selectedActivityID)
	
	# Play animation
	$AnimationPlayer.play("PinSpawnAnim")
	
func _process(delta):
	if(currentTime > lifeTime) : 
		queue_free()
		return
	currentTime += delta

func _on_TextureButton_pressed():
	var err = get_tree().change_scene(activities[selectedActivityID].path)
	if err :
		print(err)
	queue_free()


func _update_icon_image():
	$TextureButton.update()
