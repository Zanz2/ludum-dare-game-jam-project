extends KinematicBody2D


const MOVEMENT_SPEED = 100 # movement speed
var motion = Vector2(); # direction vector
var directionAi = null # direction of ai as string
onready var spriteNode=$"ai_animated_sprite"
onready var timer=get_node("aiTimer")

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	pass
	
func _on_Timer_timeout():
	directionAi = moveAi() # ai follows player around (not yet though, hehehe)
	motion = move_and_slide(motion) # from specs move_and_slide returns remaing motion
	setAiSprite(motion, directionAi) # set sprite for character

func moveAi():
	var directionAi = null # where is ai headed
	
	var randomInt = randi()%5+1 # int from 1 to 4

	if randomInt==4:
		motion.x = MOVEMENT_SPEED
		directionAi = "ui_right"
	elif randomInt==3:
		motion.x = -MOVEMENT_SPEED
		directionAi = "ui_left"
	else:
		motion.x = 0
	if randomInt==2:
		motion.y = -MOVEMENT_SPEED
		directionAi = "ui_up"
	elif randomInt==1:
		motion.y = MOVEMENT_SPEED
		directionAi = "ui_down"
	else:
		motion.y = 0
		
	return directionAi

# set ai's sprite based on motion
func setAiSprite(motion, directionAi):
	# if ai is still, idle sprite should be used
	if (directionAi == null):
		spriteNode.play("idle")
	elif (directionAi == "ui_right"):
		spriteNode.play("run_right")
	elif (directionAi == "ui_left"):
		spriteNode.play("run_left")
	elif (directionAi == "ui_up"):
		spriteNode.play("run_up")
	elif (directionAi == "ui_down"):
		spriteNode.play("run_down")