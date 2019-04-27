extends KinematicBody2D

const MOVEMENT_SPEED = 100 # movement speed
var motion = Vector2(); # direction vector

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# move player
	movePlayer()
	
	motion = move_and_slide(motion) # from specs move_and_slide returns remaing motion
	pass
	
# Move player with arrrows
func movePlayer():
	if Input.is_action_pressed("ui_right"):
		motion.x = MOVEMENT_SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -MOVEMENT_SPEED
	else:
		motion.x = 0
	if Input.is_action_pressed("ui_up"):
		motion.y = -MOVEMENT_SPEED
	elif Input.is_action_pressed("ui_down"):
		motion.y = MOVEMENT_SPEED
	else:
		motion.y = 0