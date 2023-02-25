extends Actor



export var max_speed:= Vector2(100, -100)
# La vitesse du joueur augmente pendant le jeu
# pour augmenter la difficulté
export var player_gravity: = -5
var velocity: = Vector2(0, -5)

var left_input: = 0.0
var right_input: = 0.0

func _physics_process(delta) -> void:
	
	# Movement
	left_input = Input.get_action_strength("move_left")
	right_input = Input.get_action_strength("move_right")
	var direction: = Vector2(right_input - left_input, 0.0)
	velocity.x = direction.x * max_speed.x # X movement is a constant
	
	# Gravity
	velocity.y += player_gravity * delta
	velocity.y = max(max_speed.y, velocity.y) # Limit y speed ?
	
	
	velocity = move_and_slide(velocity)
