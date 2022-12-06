extends Node2D



const ChallengeButtonScene = "res://NewChallengeButton.tscn"
var ChallengeButton
var map
var timeBeforeNewChallenge = 1
var currentTime = 0
func _ready():
	map = find_node("Map")
	ChallengeButton = preload(ChallengeButtonScene)



func _process(delta):
	currentTime += delta
	if currentTime < timeBeforeNewChallenge :
		return
	currentTime = 0
	randomize()
	var newPos = Vector2(rand_range(0, map.texture.get_width()), rand_range(0, map.texture.get_height()) ) 
	var challengeButton = ChallengeButton.instance()
	challengeButton.set_position(newPos)
	add_child(challengeButton)
	

	
