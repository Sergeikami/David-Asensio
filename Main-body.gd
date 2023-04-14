extends KinematicBody2D
var velocitat := 50

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(500,300)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ves_dreta"):
		if Input.is_action_pressed("ves_dreta") and Input.is_action_pressed("ves_amunt"):
			position += Vector2(0.707,-0.707) * velocitat * delta
		elif Input.is_action_pressed("ves_dreta") and Input.is_action_pressed("ves_abaix"):
			position += Vector2(0.707,0.707) * velocitat * delta
		else:
			position += Vector2(1,0) * velocitat * delta
	elif Input.is_action_pressed("ves_esquerra"):
		if Input.is_action_pressed("ves_esquerra") and Input.is_action_pressed("ves_amunt"):
			position += Vector2(-0.707,-0.707) * velocitat * delta
		elif Input.is_action_pressed("ves_esquerra") and Input.is_action_pressed("ves_abaix"):
			position += Vector2(-0.707,0.707) * velocitat * delta
		else:
			position += Vector2(-1,0) * velocitat * delta
	elif Input.is_action_pressed("ves_amunt"):
		position += Vector2(0,-1) * velocitat * delta
	elif Input.is_action_pressed("ves_abaix"):
		position += Vector2(0,1) * velocitat * delta
	
	
