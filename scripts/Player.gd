extends KinematicBody2D

var speed = 200
const GRAVITY = 300.0
var velocity

func _ready():
	velocity = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		move_and_slide(velocity, Vector2(0, -1))
		
