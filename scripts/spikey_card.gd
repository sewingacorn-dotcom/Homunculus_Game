extends Node2D

signal mouse_entered(card: Card)
signal mouse_exited(card: Card)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func highlight():
	$Card.highlight()

func unhighlight():
	$Card.unhighlight()


func _on_card_mouse_entered(card: Card) -> void:
	mouse_entered.emit(card)

func _on_card_mouse_exited(card: Card) -> void:
	mouse_exited.emit(card)
