extends KinematicBody2D
var velocitat := 5000
var moviment := Vector2.ZERO

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var n := 2

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0,0)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ves_dreta"):
		moviment = move_and_slide(Vector2.RIGHT * velocitat * delta, Vector2.RIGHT) * velocitat
	elif Input.is_action_pressed("ves_amunt"):
		moviment = move_and_slide(Vector2.UP * velocitat * delta, Vector2.ZERO) * velocitat
	elif Input.is_action_pressed("ves_esquerra"):
		moviment = move_and_slide(Vector2.LEFT * velocitat * delta, Vector2.LEFT) * velocitat
	elif Input.is_action_pressed("ves_abaix"):
		moviment = move_and_slide(Vector2.DOWN * velocitat * delta, Vector2.ZERO) * velocitat
	
	
func _on_Area2D_body_entered(body):
	if n < 1:
		position = Vector2(0,0)
		n = 2
	else:
		n -= 1
	
