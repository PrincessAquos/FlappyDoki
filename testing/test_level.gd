extends Node2D

var speed = 300

var level_active = false

func _physics_process(delta: float) -> void:
	if level_active:
		position.x = position.x - speed * delta
