extends Node2D



const ChallengeButtonScene = "res://NewChallengeButton.tscn"
var ChallengeButton
var map
export(float) var timeBeforeNewChallenge = 1.0
var currentTime = timeBeforeNewChallenge
func _ready():
	map = find_node("Map")
	ChallengeButton = preload(ChallengeButtonScene)



func _process(delta):
	currentTime += delta
	if currentTime < timeBeforeNewChallenge :
		return
	currentTime = 0
	randomize()
	
	# Adjusting new position to fit the desired area
	var newPos = Vector2( rand_range ( 0 , map.texture.get_width() ) * map.scale[0] + map.position[0] - map.texture.get_width()  * map.scale[0] / 2,
						  rand_range ( 0 , map.texture.get_height() )* map.scale[1] + map.position[1] - map.texture.get_height() * map.scale[1] / 2 ) 
	print(newPos)
	var challengeButton = ChallengeButton.instance()
	challengeButton.set_position(newPos)
	add_child(challengeButton)
	

	
