extends Panel

func _ready():
	var style:StyleBoxFlat = StyleBoxFlat.new()
	style.bg_color =  Color(0, 0, 1, 1)
	style.bg_color.a = 0.5
	add_theme_stylebox_override ("panel", style)
