extends Node2D

export var lifeTime = 5
var currentTime = 0
func _ready():
	pass # Replace with function body.
func _process(delta):
	if(currentTime > lifeTime) : 
		queue_free()
		return
	currentTime += delta
