extends Node2D
@onready var fork = %char2
@onready var dialogueui = %dialogue_ui
var dialogue_index :int = 0

const dialoguelines : Array[String] = [
	"Fork: [shake]Were you stalking me?!?!?[shake]",
	"Pantry: No of course not!",
	"Pantry: I was [wave]following[wave] you!",
	"Pantry: HUGE difference."
]
func _ready():
	dialogue_index = 0
	process_current_line(parse_line(dialoguelines[dialogue_index]))
	
func _input(event):
	if event.is_action_pressed("next_line"):
		if dialogue_index < len(dialoguelines) - 1:
			dialogue_index += 1
			process_current_line(parse_line(dialoguelines[dialogue_index]))

func parse_line(line: String):
	var line_info = line.split(":")
	assert(len(line_info) >= 2)
	return{
		"speakername": line_info[0],
		"dialoguelines": line_info[1]
	}
func process_current_line(line_info: Dictionary):
	var _line = dialoguelines[dialogue_index]
	dialogueui.speakername.text = line_info["speakername"]
	dialogueui.dialoguelines.text = line_info["dialoguelines"]
