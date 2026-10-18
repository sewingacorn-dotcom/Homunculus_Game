@tool
class_name Card extends Node2D

signal mouse_entered(card: Card)
signal mouse_exited(card: Card)

@export var card_name: String = "Card Name"
@export var card_description: String = "Card Description"
@export var card_image: Sprite2D
@export var card_cost: int = 1
@export var card_health: int = 1

@onready var cost_lbl: Label = $CostDysplay/CostLbl
@onready var name_lbl: Label = $cardName/NameLbl
@onready var description_lbl = $cardDescription
@onready var health_lbl: = $HealthDysplay2/HealthLbl
@onready var base_sprite: Sprite2D = $BaseCardSprite

func _ready():
	set_card_values(card_cost, card_health, card_name, card_description)

func set_card_values(_cost: int, _health: int, _name: String, _description: String):
	card_name = _name
	card_description = _description
	card_cost = _cost
	card_health = _health

	_update_graphics()

func _update_graphics():
	if cost_lbl.get_text()!= str(card_cost):
		cost_lbl.set_text(str(card_cost))
	if health_lbl.get_text() != str(card_health):
		health_lbl.set_text(str(card_health))
	if name_lbl.get_text() != str(card_name):
		name_lbl.set_text(card_name)
	if description_lbl.get_text() != (card_description):
		description_lbl.set_text(card_description)
		
func highlight():
	base_sprite.set_modulate(Color(1, 0.8, 1))

func unhighlight():
	base_sprite.set_modulate(Color(1, 1, 1))

func activate():
	pass

func _process(delta):
	_update_graphics()


func _on_area_2d_mouse_entered() -> void:
	mouse_entered.emit(self)

func _on_area_2d_mouse_exited() -> void:
	mouse_exited.emit(self)
