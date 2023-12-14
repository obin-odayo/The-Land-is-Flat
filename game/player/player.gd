# Created by: 	Zhean Robby L. Ganituen 
#				CRATE
# Created on:	DEC 12, 2023
# Last Updated:	DEC 12, 2023
# Created for: 	The Land is Flat
# PLAYER SCRIPT

extends CharacterBody2D

@onready var anim = get_node("AnimationPlayer")

const SPEED = 150.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# no gravity for this character since it's in isometric view of a flat land.
	
	# move player depending on which button is pressed.
	# if a movement key is pressed rotate the animation based on the movement key pressed.
	# solution: rotation = lerp_angle(rotation,<rotation in radians>,rotationSpeed)
	var rotationSpeed = 0.2
	if Input.is_action_pressed("MoveLeft"):
		# if "A" is pressed move the character to the left based on the negative of speed.
		# negative because in the (x,y) plane to move to the left we need to move in the negative direction.
		velocity.x = -1 * SPEED
		rotation = lerp_angle(rotation,-PI/2,rotationSpeed)
		anim.play("Walk")
	elif Input.is_action_pressed("MoveRight"):
		# if "D" is pressed move the character to the right.
		velocity.x = 1 * SPEED
		rotation = lerp_angle(rotation,PI/2,rotationSpeed)
		anim.play("Walk")
	elif Input.is_action_pressed("MoveUp"):
		# if "W" is pressed move the character to the up.
		velocity.y = -1 * SPEED
		rotation = lerp_angle(rotation,0,rotationSpeed)
		anim.play("Walk")
	elif Input.is_action_pressed("MoveDown"):
		# if "S" is pressed move the character to the down.
		velocity.y = 1 * SPEED
		rotation = lerp_angle(rotation,PI,rotationSpeed)
		anim.play("Walk")
	else:
		# if no buttons are pressed make x and y velocity 0 and play Idle.
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		anim.play("Idle")

	move_and_slide()
