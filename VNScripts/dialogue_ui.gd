extends Control
@onready var speakername=%SpeakerName
@onready var dialoguelines=%DialogueLines

const animation_speed : int = 30
var animate_text : bool = false
var current_visible_characters : int = 0

func _process(delta):
	if animate_text:
		if dialoguelines.visible_ratio < 1:
			dialoguelines.visible_ratio += (1.0/dialoglines.text.length()) * (animation_speed * delta)
			current_visible_characters = dialoguelines.visible_characters
		else:
				animate_text = false

 
func change_line(line: String):
	current_visible_characters = 0
	dialoguelines.text = line
	animate_text = true
	
