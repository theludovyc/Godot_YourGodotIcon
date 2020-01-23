extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_down():
	$FileDialog.popup()
	pass # Replace with function body.

func _on_FileDialog_file_selected(path):
	print(path)
	pass # Replace with function body.
