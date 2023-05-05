extends KinematicBody2D


var el_segueixo = false
var speed := 55
var velocitat := Vector2.ZERO



func _physics_process(delta):
	if el_segueixo == true:
		if global_position.distance_squared_to(Global.Jugador.global_position) > 95:
			velocitat = global_position.direction_to(Global.Jugador.global_position)
		else:
			velocitat = Vector2.ZERO
	else:
		velocitat = Vector2.ZERO
		
	velocitat = velocitat.normalized() * speed
	
	move_and_slide(velocitat)


func _on_Area2D_body_entered(body):
	if body.is_in_group('Jugador'):
		el_segueixo = true
