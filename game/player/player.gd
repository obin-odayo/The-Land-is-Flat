# Created by: 	Zhean Robby L. Ganituen 
#				CRATE
# Created on:	DEC 12, 2023
# Last Updated:	DEC 12, 2023
# Created for: 	The Land is Flat
# PLAYER SCRIPT

extends CharacterBody2D

@onready var anim = get_node("AnimationPlayer")

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("MoveUp") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("MoveLeft", "MoveRight")
	
	# move player depending on which button is pressed.
	if direction:
		velocity.x = direction * SPEED
		anim.play("Walk")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		anim.play("Idle")

	move_and_slide()
