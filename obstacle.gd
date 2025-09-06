extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.take_damage()
		print("This is where you tell the character to take damage")
	pass # Replace with function body.

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullet"):
		print("bullet entered")
		area.queue_free()
	pass # Replace with function body.
