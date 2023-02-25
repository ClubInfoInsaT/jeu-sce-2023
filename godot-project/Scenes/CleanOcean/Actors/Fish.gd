extends Actor

var velocity: = Vector2(0, 0)
var rand_result: = 0.0

var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	var coinflip = rng.randf_range(-1.0, 1.0)
	if coinflip > 0:
		rand_result = 200
	else:
		rand_result = -200
		$Fish.flip_h = true
	
	velocity.x = rand_result
	
func _on_FishDetector_body_entered(body):
	if body.name == "Player1":
		queue_free()
	else:
		# TODO 
		velocity.x = rand_result/2  # It don't work :(


func _physics_process(_delta) -> void:
	velocity = move_and_slide(velocity)


