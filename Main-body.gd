extends KinematicBody2D
var velocitat := 65
var moviment := Vector2()
var dest_balaso_rec = preload("res://Balaso.tscn")

# Declare member variables here. Examples:
# var a = 2wwwwwwwww
# var b = "text"
var n := 4
var dins := false
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0,0)
	Global.Jugador = self
		
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func get_input():
	moviment = Vector2()
	if Input.is_action_pressed("ves_dreta"):
		moviment.x += 1
	if Input.is_action_pressed("ves_esquerra"):
		moviment.x -= 1
	if Input.is_action_pressed("ves_abaix"):
		moviment.y += 1
	if Input.is_action_pressed("ves_amunt"):
		moviment.y -= 1
	moviment = moviment.normalized() * velocitat
	
func _physics_process(delta):
	get_input()
	moviment = move_and_slide(moviment)
	
func _on_Area2D_body_entered(body):
	dins = true
	
	$Timer.start()
	if n < 1:
		get_tree().reload_current_scene()
		n = 4
	else:
		n -= 1
	


func _on_Area2D_body_exited(body):
	dins = false
	$Timer.stop()
	


func _on_Timer_timeout():
	if dins == true:
		if n < 1:
			get_tree().reload_current_scene()
			n = 4
		else:
			n -= 1
		

func _input(event):
	if event.is_action_pressed('click'):
		var dest_balaso_inst = dest_balaso_rec.instance()
		dest_balaso_inst.fire($Sprite/vara.global_position, get_global_mouse_position())
		dest_balaso_inst.global_position = $Sprite/vara.global_position
		add_child(dest_balaso_inst)
