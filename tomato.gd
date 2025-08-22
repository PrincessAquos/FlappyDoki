extends Area2D

const SPEED = 250

var velocity = Vector2(0, 0)

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	position.x += velocity.x * delta
	pass

func fire():
	velocity.x = SPEED
	pass
