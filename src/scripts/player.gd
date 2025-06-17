extends CharacterBody2D

@export_category("Attributes")
@export var HP: float
@export var SPEED: float

func _physics_process(delta: float) -> void:
	Move(delta)
	move_and_slide()
	
func Move(delta):
	#if not is_on_floor():
		#velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("Jump") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var input_dir := Input.get_vector("Left", "Right", "Up", "Down")
	if input_dir:
		velocity.x = input_dir.x * SPEED
		velocity.y = input_dir.y * SPEED
		%HappyBoo.play_walk_animation()
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		%HappyBoo.play_idle_animation()
