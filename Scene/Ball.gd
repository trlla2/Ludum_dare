extends RigidBody2D

@onready var game_over = preload("res://Scene/GameOver.tscn")
var gameOver = game_over.instance()	

var speed = 300
var dirX = -1
var dirY = -1
var spawnPos = Vector2(576,324)


#dibujar la BOla
func _draw() -> void:
	draw_circle(Vector2(0,0),15,Color(1,1,1))


func _ready() -> void: 
	linear_velocity.x = speed * dirX

			
func _process(delta):
	linear_velocity.x = speed * dirX
	linear_velocity.y = speed * dirY
	#print(dir)

		
	

func _on_area_2d_body_entered(body):
	
	if body.is_in_group("Player") : 
		dirX = -dirX
		get_node("AudioStreamPlayer").play()	
	elif body.is_in_group(("left_wall")):
		speed += 50
	elif body.is_in_group("horizontal_Wall"):
		dirY = -dirY	
	elif body.is_in_group("Death"): 
		add_child(gameOver)
		
	
#get_viewport().size = Vector2(1920, 1080)
		
