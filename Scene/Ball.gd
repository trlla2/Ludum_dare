extends RigidBody2D

# @onready var ball_preload = preload("res://scenes/ball.tscn)
# var ball = ball_preload.instantiate()
#
# add_child(ball)




#dibujar la BOla
func _draw() -> void:
	draw_circle(Vector2(0,0),15,Color(1,1,1))

var speed = 300
var dir = -1

func _ready() -> void: 
	linear_velocity.x = speed * dir

func _process(delta):
	linear_velocity.x = speed * dir 
	
func _on_ball_body_entred(body: Node) -> void:
	if body.is_in_group("Player"):
		dir *=-1
		print("rebota")
	pass
		
