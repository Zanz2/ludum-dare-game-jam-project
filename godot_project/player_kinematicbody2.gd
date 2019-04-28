extends KinematicBody2D

const MOVEMENT_SPEED = 100 # movement speed
var motion = Vector2(); # direction vector
var directionPlayer = null # direction of player as string

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	directionPlayer = movePlayerWithInput() # move player with input from keyboard
	motion = move_and_slide(motion) # from specs move_and_slide returns remaing motion
	setPlayerSprite(motion, directionPlayer) # set sprite for character
	
	pass
	
# Move player with arrrows
func movePlayerWithInput():
	var directionPlayer = null # where is player headed
	
	if Input.is_action_pressed("ui_right"):
		motion.x = MOVEMENT_SPEED
		directionPlayer = "ui_right"
	elif Input.is_action_pressed("ui_left"):
		motion.x = -MOVEMENT_SPEED
		directionPlayer = "ui_left"
	else:
		motion.x = 0
	if Input.is_action_pressed("ui_up"):
		motion.y = -MOVEMENT_SPEED
		directionPlayer = "ui_up"
	elif Input.is_action_pressed("ui_down"):
		motion.y = MOVEMENT_SPEED
		directionPlayer = "ui_down"
	else:
		motion.y = 0
		
	return directionPlayer
		
# set player's sprite based on motion
func setPlayerSprite(motion, directionPlayer):
	var playerSprite = get_node("Player_Sprite")
	# if player is still, idle sprite should be used
	if (directionPlayer == null):
		playerSprite.play("idle")
	elif (directionPlayer == "ui_right"):
		playerSprite.play("run_right")
	elif (directionPlayer == "ui_left"):
		playerSprite.play("run_left")
	elif (directionPlayer == "ui_up"):
		playerSprite.play("run_up")
	elif (directionPlayer == "ui_down"):
		playerSprite.play("run_down")