extends Node2D

@onready var player = get_node("Player2")

func _ready() -> void:
	var count_tree = randi() % 8 + 1
	
	for i in count_tree:
		spawn_tree()
		spawn_enemy()

func spawn_tree():
	var new_tree = preload("res://src/scenes/pine_tree.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_tree.global_position = %PathFollow2D.global_position
	add_child(new_tree)
	

func spawn_enemy():
	var new_enemy = preload("res://src/scenes/enemy_type_1.tscn").instantiate()
	new_enemy.SPEED = 15
	new_enemy.Target = player
	new_enemy.transform.scaled(Vector2(0.5,0.5))
	%EnemyPathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %EnemyPathFollow2D.global_position
	add_child(new_enemy)
