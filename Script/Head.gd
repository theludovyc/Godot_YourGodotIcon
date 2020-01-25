extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setColor(n:Sprite, c:Color):
	n.self_modulate = c
	
func setHelmetColor(c:Color):
	setColor($helmet, c)
	
func setEyesColor(c:Color):
	setColor($eyes, c)
	
func setIrisColor(c:Color):
	setColor($iris, c)
	
func setNoseColor(c:Color):
	setColor($nose, c)
	
func setSmileColor(c:Color):
	setColor($smile, c)
	
func setMouthColor(c:Color):
	setColor($mouth, c)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
