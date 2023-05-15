extends KinematicBody2D


# Declare member variables here. Examples:
var d = 1
func _on_hitbox_body_entered(body):
	if body.is_in_group('Balasos_multiples'):
		if d == 0:
			queue_free()
		else:
			d -= 1
