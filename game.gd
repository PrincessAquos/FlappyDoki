extends Node

var player:CharacterBody2D
var level:Node2D
var ui:Node2D : set = set_ui

var is_started = false

func game_over():
	pass

func set_ui(new_ui):
	player.healthbar = new_ui
	ui = new_ui
	pass

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		if !is_started:
			is_started = true
			player.is_waiting = false
			level.level_active = true
			pass
		player.jump()
	if Input.is_action_just_pressed("fire"):
		if is_started:
			player.fire()
	pass
