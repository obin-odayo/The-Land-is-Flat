extends Area2D

@onready var TextBox = preload("res://game/UI/game_UI/TextBox.gd").new()

func _on_body_entered(body):
	if body.name == "Player":
		print("Hello")
		TextBox.changeText()
		
