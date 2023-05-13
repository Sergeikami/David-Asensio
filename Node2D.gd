extends Node2D


# Declare member variables here. Examples:
var t = 0
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if t == 0:
		get_tree().change_scene("res://Menu.tscn")
		t += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
