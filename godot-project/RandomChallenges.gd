extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const ChallengeButtonScene = "res://NewChallengeButton.tscn"
var ChallengeButton
var map
# Called when the node enters the scene tree for the first time.
func _ready():
	map = find_node("Map")
	ChallengeButton = preload(ChallengeButtonScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	randomize()
	var newPos = Vector2(rand_range(0, map.texture.get_width()), rand_range(0, map.texture.get_height()) ) 
	var challengeButton = ChallengeButton.instance()
	challengeButton.set_position(newPos)
	add_child(challengeButton)
	
	
	
