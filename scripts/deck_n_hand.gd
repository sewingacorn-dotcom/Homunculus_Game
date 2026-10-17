extends Node2D

@onready var card_scene: PackedScene = preload("res://scenes/card.tscn")

@onready var spawn_point = $CanvasLayer/spawn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_button_pressed():
	var card: Card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_card_values(6, 4, "name", "description")
	card.visible = true


func _on_button_2_pressed() -> void:
	var card: Card = card_scene.instantiate()
	spawn_point.add_child(card)
	card.set_card_values(10, 5, "diesel homunculus", "Burn+1   Atk+1 to fire")
	card.visible = true
