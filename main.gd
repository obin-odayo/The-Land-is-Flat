extends Button

func _on_button_play_pressed():
	# play button is pressed
	# change scene to game
	get_tree().change_scene_to_file("")

func _on_button_exit_pressed():
	# exit button is pressed
	# exit the game
	get_tree().quit()

func _on_button_options_pressed():
	# option button is pressed
	# show game options
	pass # Replace with function body.
	
func _on_buttton_credits_pressed():
	# credits button is pressed
	# show game credits
	pass # Replace with function body.
