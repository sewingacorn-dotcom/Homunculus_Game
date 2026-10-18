class_name Card extends Node2D

@export var card_name: String = "Card Name"
@export var card_description: String = "Card Description"
@export var card_cost: int = 1
@export var card_health: int = 1
@export var card_image: Node2D

@onready var cost_lbl: Label = $CostDysplay/CostLbl
@onready var name_lbl: Label = $cardName/NameLbl
@onready var description_lbl = $cardDescription
@onready var health_lbl: = $HealthDysplay2/HealthLbl

func _ready():
	set_card_values(card_cost, card_health, card_name, card_description)
	visible = false

func set_card_values(_cost: int, _health: int, _name: String, _description: String):
	card_name = _name
	card_description = _description
	card_cost = _cost
	card_health = _health

	cost_lbl.set_text(str(card_cost))
	health_lbl.set_text(str(card_health))
	name_lbl.set_text(card_name)
	description_lbl.set_text(card_description)
