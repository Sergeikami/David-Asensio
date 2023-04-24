extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_entered(body):
	var p = get_node('/Root/Mainbody')
	if body.name == 'Mainbody':
		p.position = Vector2(0,0)
	else:
		pass
	
