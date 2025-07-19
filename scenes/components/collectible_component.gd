class_name CollectibleComponent
extends Area2D

@export var collectible_name: String

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		print("Collected:", collectible_name)
		get_parent().queue_free()
