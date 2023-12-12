extends Area2D



@onready var speed = 400


func _ready():
	pass # Replace with function body.


func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.length > 0
	if Input.is_action_pressed("move_left"):
		velocity.length > 0
	if Input.is_action_pressed("move_up"):
		velocity.length > 0
	if Input.is_action_pressed("move_down"):
		velocity.length > 0
	position += velocity * delta
	
