extends Area2D



@onready var speed = 400
@onready var bg_music = %BGmusic
@onready var enemy_hit = %EnemyHit



func _ready():
	pass # Replace with function body.


func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x += -1
	if Input.is_action_pressed("ui_up"):
		velocity.y += -1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta


func _on_body_entered(body):
	enemy_hit.play()
	bg_music.stop()
	hide()
