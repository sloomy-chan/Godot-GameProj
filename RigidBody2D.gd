extends Sprite

# Declare member variables here. Examples:
export var speed = 400
var screen_size
export var jumpForce = 20


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		print("baixo")
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		print("cima")
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		print("direita")
	if Input.is_action_pressed("move_left"):
		print("esquerda")
		velocity.x -= 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
		position += velocity * delta
		position.x = clamp(position.x, 0, screen_size.x)     
		position.y = clamp(position.y, 0, screen_size.y)
		

##func _physics_process(delta):
	#var velocity = Vector2.ZERO
	#if Input.is_action_just_pressed("move_up"):
		#velocity.y += jumpForce


  


