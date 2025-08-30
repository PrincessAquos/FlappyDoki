extends CharacterBody2D

const JUMP_SPEED = 600
const GRAVITY = 20

@export var shoot_timer:Timer

@export var projectile_scene:PackedScene = preload("res://tomato.tscn")

var is_waiting = true

func _ready():
	pass

func start():
	is_waiting = false

func jump():
	velocity.y = -JUMP_SPEED
	pass

func fire():
	if shoot_timer.is_stopped():
		shoot_timer.start()
		var new_projectile = projectile_scene.instantiate()
		add_sibling(new_projectile)
		new_projectile.position = position
		new_projectile.fire()

func _physics_process(delta: float) -> void:
	if !is_waiting:
		velocity.y += GRAVITY
		print(velocity.y)
	move_and_slide()
	return
