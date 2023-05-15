extends Area2D

var dir : Vector2

var speed = 140

func fire(origin : Vector2, dest : Vector2):
	dir = origin.direction_to(dest)

func _process(delta):
	if dir:
		global_position += dir * delta * speed

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
