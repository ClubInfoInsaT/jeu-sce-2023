extends Node2D

export var lifeTime = 5
var currentTime = 0
func _ready(): 
	pass
	
func _process(delta):
	if(currentTime > lifeTime) : 
		queue_free()
		return
	currentTime += delta

func _on_TextureButton_pressed():
	queue_free()

