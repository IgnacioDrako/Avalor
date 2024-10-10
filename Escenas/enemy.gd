extends Node2D
const velocidad = 10
var direcion = 1
func _process(delta):
	position.x = direcion * velocidad * delta
