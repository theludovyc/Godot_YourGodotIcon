extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_ColorPickerHelmet_color_changed(color):
	$Head.setHelmetColor(color)
	pass # Replace with function body.

func _on_ColorPickerEyes_color_changed(color):
	$Head.setEyesColor(color)
	pass # Replace with function body.

func _on_ColorPickerIris_color_changed(color):
	$Head.setIrisColor(color)
	pass # Replace with function body.

func _on_ColorPickerNose_color_changed(color):
	$Head.setNoseColor(color)
	pass # Replace with function body.

func _on_ColorPickerSmile_color_changed(color):
	$Head.setSmileColor(color)
	pass # Replace with function body.

func _on_ColorPickerMouth_color_changed(color):
	$Head.setMouthColor(color)
	pass # Replace with function body.

func _on_Button_button_down():
	$FileDialog.popup()
	pass # Replace with function body.

func _on_FileDialog_file_selected(path):
	$Head.savePNG(path)
	print(path)
	pass # Replace with function body.