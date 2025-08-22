extends CharacterBody2D

const JUMP_SPEED = 400
const GRAVITY = 20

@export var projectile_scene:PackedScene = preload("res://tomato.tscn")

var is_waiting = true

func _ready():
	pass

func _physics_process(delta: float) -> void:
	if !is_waiting:
		velocity.y += GRAVITY
		print(velocity.y)
		if Input.is_action_just_pressed("fire"):
			var new_projectile = projectile_scene.instantiate()
			add_sibling(new_projectile)
			new_projectile.position = position
			new_projectile.fire()
			pass
			
	if Input.is_action_just_pressed("jump"):
		is_waiting = false
		velocity.y = -JUMP_SPEED
	move_and_slide()
	return
