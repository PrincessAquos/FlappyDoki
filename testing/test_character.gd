extends CharacterBody2D

const JUMP_SPEED = 600
const GRAVITY = 20

var healthbar

@export var shoot_timer:Timer

@export var projectile_scene:PackedScene = preload("res://tomato.tscn")

var is_waiting = true

func _ready():
	Game.player = self
	pass

func set_healthbar(ui:Node2D):
	healthbar = ui

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

func take_damage():
	var curr_hp = healthbar.get_health()
	curr_hp -= 1
	healthbar.set_health(curr_hp)
	if curr_hp <= 0:
		die()
		pass
	pass

func die():
	print("uh i guess die or something lol")
	Game.game_over()
	pass

func _physics_process(delta: float) -> void:
	if !is_waiting:
		velocity.y += GRAVITY
		print(velocity.y)
	move_and_slide()
	return
