extends CharacterBody2D

var speed = 300
var dir = Vector2.ZERO

func _physics_process(delta):
	if Input.get_action_strength("ui_down"):
		position.y += speed*delta
	elif Input.get_action_strength("ui_up"):
		position.y -= speed*delta
	
	
#	move_and_slide()



