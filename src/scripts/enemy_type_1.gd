extends EnemyBase

func _physics_process(delta: float) -> void:
	if  Target != null:
		Move(delta)
		move_and_slide()

func Move(delta:float) -> void:
	var directionTo = Target.global_position - global_position
	velocity = directionTo * delta * SPEED
	%Slime.play_walk()

func Attack(target: CharacterBody2D) -> void:
	pass
	
func Die() -> void:
	pass
