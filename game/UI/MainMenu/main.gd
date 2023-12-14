# Created by: 	Zhean Robby L. Ganituen 
#				CRATE
# Created on:	DEC 12, 2023
# Last Updated:	DEC 12, 2023
# Created for: 	The Land is Flat
# MAIN MENU SCRIPT

extends Button

func _on_button_play_pressed():
	# when play is pressed
	# start at the first scene of the game
	
	get_tree().change_scene_to_file("res://game/levels/scene_1/scene_1.tscn")
	pass # Replace with function body.

func _on_button_options_pressed():
	# when options is pressed
	# show game options menu
	
	# format: get_tree().change_scene_to_file("res://<options_scene>.tscn")
	pass # Replace with function body.

func _on_buttton_credits_pressed():
	# when credits is pressed
	# show the game credits
	
	# format: get_tree().change_scene_to_file("res://<credits_scene>.tscn")
	pass # Replace with function body.

func _on_button_exit_pressed():
	# when exit button is pressed
	# exit the game
	get_tree().quit()
