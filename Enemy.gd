extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 150
const JUMP_HEIGHT = -500
var timer = 0
var random_direction = 0
var random_time = 0
var motion = Vector2()


func _physics_process(delta):
	motion.y += GRAVITY
	timer += 1
	random_direction = randi()%2
	random_time = randi()%400+100
	if timer > random_time:
		if random_direction == 0:
			motion.x = 20
		if random_direction == 1:
			motion.x = -20
		timer = 0
#	if Input.is_action_pressed("ui_right"):
#		motion.x = SPEED
#		$Sprite.flip_h = false
#		$Sprite.play ("Run")
#	elif Input.is_action_pressed("ui_left"):
#		motion.x = -SPEED
#		$Sprite.flip_h = true
#		$Sprite.play ("Run")
#	else:
#		motion.x = 0
#		$Sprite.play ("idle")
#
#
#	if is_on_floor():
#		if Input.is_action_just_pressed("ui_up"):
#			motion.y = JUMP_HEIGHT


	motion = move_and_slide(motion, UP)
	pass


