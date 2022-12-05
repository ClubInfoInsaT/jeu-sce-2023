extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ChallengeScene 
var map
# Called when the node enters the scene tree for the first time.
func _ready():
	map = find_node("Map")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#randomize()
	#var pos_x = rand_range(0, map.get("Sprite").texture.get_width())
	#var pos_y = rand_range(0, map.get("Sprite").texture.get_heigth())
	#print( map.get("Sprite"))
	
