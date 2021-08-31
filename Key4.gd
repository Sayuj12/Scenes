extends Area

signal keyCollected

func _ready():
	pass

	
func _on_Key_body_entered(body):
	if body.name == "Human":
		$Timer.start()


func _on_Timer_timeout():
	emit_signal("keyCollected")
	queue_free()
