extends Control

func _ready():
	var floorTexture = $"Floor" 
	var wallsTexture = [$"WallTop", $"WallBot", $"WallRight"]
	
	# change the color of the floor texture to blue
	floorTexture.modulate = Color(1, 0, 0, .5)
	
	# iterate through the list of wall panels and change all their colors to the same one.
	for panel in wallsTexture:
		panel.modulate = Color(0, 0, 0, 1)	
