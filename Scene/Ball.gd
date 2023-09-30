extends RigidBody2D

# @onready var ball_preload = preload("res://scenes/ball.tscn)
# var ball = ball_preload.instantiate()
#
# add_child(ball)

var speed = 300
var dir = -1


#dibujar la BOla
func _draw() -> void:
	draw_circle(Vector2(0,0),15,Color(1,1,1))


func _ready() -> void: 
	linear_velocity.x = speed * dir


func _process(delta):
	linear_velocity.x = speed * dir 
	print(dir)



func _on_area_2d_body_entered(body):
	dir = -dir
	print("rebota")