extends Actor

var velocity: = Vector2(0, 0)

var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	velocity.x = rng.randf_range(-20.0, 20.0)
	velocity.y = rng.randf_range(-5.0, 5.0)

func _on_CatchDetector_body_entered(body):
	if body.name == "Player1":
		queue_free()
	else:
		velocity.x = body.velocity.x / 2

func _physics_process(_delta) -> void:
	velocity = move_and_slide(velocity)



