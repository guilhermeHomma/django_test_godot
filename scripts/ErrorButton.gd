extends ColorRect


func _ready():
	$Button.connect('pressed', self, 'button_pressed')
	pass 

func button_pressed():
	visible = false
