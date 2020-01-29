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

func blendSprite(s:Sprite, dst:Image):
	var img = Image.new()
	
	img.create(s.texture.get_data().get_width(), s.texture.get_data().get_height(), false, Image.FORMAT_RGBA8)

	img.fill(s.self_modulate)

	dst.blend_rect_mask(img, s.texture.get_data(), s.texture.get_data().get_used_rect(), s.position + Vector2(36, 57))

func savePNG(path:String):
	var img = Image.new()

	img.create(768, 768, false, Image.FORMAT_RGBA8)
	
	blendSprite($eyes, img)
	
	blendSprite($nose, img)
	
	blendSprite($iris, img)
	
	blendSprite($helmet, img)
	
	blendSprite($smile, img)
	
	blendSprite($mouth, img)

	img.save_png(path)
	
	#$helmet.texture.get_data().save_png(path)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
