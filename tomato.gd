extends Area2D

const SPEED = 500

@export var onScreenNotifier:VisibleOnScreenNotifier2D

var velocity = Vector2(0, 0)

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	position.x += velocity.x * delta
	pass

func fire():
	velocity.x = SPEED
	pass

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	pass # Replace with function body.
