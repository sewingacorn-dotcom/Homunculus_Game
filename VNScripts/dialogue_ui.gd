extends Control
@onready var speakername=%SpeakerName
@onready var dialoguelines=%DialogueLines

const animation_speed : int = 30
var animate_text : bool = false
var current_visible_characters : int = 0

func _process(delta):
	if animate_text:
		if dialoguelines.visible_ratio < 1:
			dialoguelines.visible_ratio += (1.0/dialoguelines.text.length()) * (animation_speed * delta)
			current_visible_characters = dialoguelines.visible_characters
		else:
				animate_text = false

 
func change_line(speaker: String, line: String):
	speakername.text = speaker
	current_visible_characters = 0
	dialoguelines.text = line
	dialoguelines.visible_characters = 0
	animate_text = true
	
func skip_text_animation():
	dialoguelines.visible_ratio = 1
	
