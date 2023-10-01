extends Label

var my_Timer = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	my_Timer += delta;
	text = str(int(my_Timer))
	
	pass
