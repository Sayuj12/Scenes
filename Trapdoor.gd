extends Area

signal trap

func _ready():
	pass




func _on_trapdoor_body_entered(body):
	if body.name == "Human":
		$Timer.start()
		

func _on_Timer_timeout():
	emit_signal("trap")
	get_tree().change_scene("res://Scenes/Game over.tscn")
	queue_free()
