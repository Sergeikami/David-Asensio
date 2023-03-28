extends KinematicBody2D


# Declare member variables here. Examples:
var velocitat := 50000
var moviment := Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.action_press('ui_right'):
		moviment = Vector2.RIGHT * velocitat
