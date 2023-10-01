extends  CharacterBody2D

const speed = 300.0
var direction





func _physics_process(delta):
	direction = get_axis("ui_up", "ui_down")
	
	if direction:
		velocity.y = direction* speed*delta
	else: 
		velocity.y = move_toward(velocity.y,0, speed )
		
	move_and_collide(velocity)


func get_axis(up,down):
	if Input.is_action_pressed(up):
		return -1
	elif Input.is_action_pressed(down):
		return 1
