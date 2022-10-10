extends Sprite

# Declare member variables here. Examples:
export var speed = 400
var screen_size
export var jumpForce = 20
export var invic = false


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		invic = true
	else:
		invic = false

  


