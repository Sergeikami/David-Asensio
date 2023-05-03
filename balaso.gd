extends Area2D

var velocitat = Vector2.ZERO
var balaso = balaso.instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += velocitat * delta
	get_parent().add_child(balaso)
