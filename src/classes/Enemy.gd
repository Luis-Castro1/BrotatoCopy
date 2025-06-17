class_name EnemyBase
extends CharacterBody2D

@export_category("Attributes")
@export var HP: float
@export var DAMAGE: float
@export var SPEED : float

@export_category("Target")
@export var Target: CharacterBody2D

func Move(delta:float) -> void:
	pass

func Attack(target: CharacterBody2D) -> void:
	pass
	
func Die() -> void:
	pass
