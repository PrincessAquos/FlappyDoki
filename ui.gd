extends Node2D

@export var healthNodes:Array[Sprite2D]

var max_health = 3
var health = 3

func _ready() -> void:
	max_health = healthNodes.size()
	reset_health()
	Game.ui = self

func reset_health():
	health = max_health
	for heart in healthNodes:
		heart.visible = true

func get_health():
	return health

func set_health(amount:int):
	health = amount
	
	var a = 0
	while a < health:
		healthNodes[a].visible = true
		a += 1
	while a < max_health:
		healthNodes[a].visible = false
		a += 1
