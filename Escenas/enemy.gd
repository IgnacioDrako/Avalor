extends Node2D
const velocidad = 50
var direcion = 1
@onready var ray_cast_izquierda: RayCast2D = $RayCastIzquierda
@onready var ray_cast_derecha: RayCast2D = $RayCastDerecha
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	if ray_cast_derecha.is_colliding():
		direcion = -1
		animated_sprite.flip_h = true
	if ray_cast_izquierda.is_colliding():
		direcion = 1
		animated_sprite.flip_h = false
	position.x += direcion * velocidad * delta
