extends Area2D
#Bolsa curativa o lut (aun por determinar)
func _on_body_entered(body: Node2D) -> void:
	print("Trigger")
	queue_free()
