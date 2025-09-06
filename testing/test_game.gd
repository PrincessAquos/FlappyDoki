extends Node2D

@export var player:CharacterBody2D
@export var level:Node2D
@export var ui:Node2D

#var is_started = false
#
#func _ready() -> void:
	#player.healthbar = ui
	#pass
#
#func _physics_process(delta: float) -> void:
	#if Input.is_action_just_pressed("jump"):
		#if !is_started:
			#is_started = true
			#player.is_waiting = false
			#level.level_active = true
			#pass
		#player.jump()
	#if Input.is_action_just_pressed("fire"):
		#if is_started:
			#player.fire()
	#pass
