extends Node2D

@onready var SpikeyCard_scene: PackedScene = preload("res://scenes/cards/SpikeyCard.tscn")
@onready var DieselCard_scene: PackedScene = preload("res://scenes/cards/DieselCard.tscn")
@onready var card_scene: PackedScene = preload("res://scenes/card.tscn")

@onready var hand: Hand = $CanvasLayer/Hand
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_button_pressed():
	var SpkCard = SpikeyCard_scene.instantiate()
	hand.add_card(SpkCard)


func _on_button_2_pressed() -> void:
	var DslCard = DieselCard_scene.instantiate()
	hand.add_card(DslCard)
	print("hello")

func activate():
	pass

func _process(delta):
	pass
