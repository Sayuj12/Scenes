extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$ProgressBar.value-=1
	


func _on_ProgressBar_changed():
	$ProgressBar.value == 0
	get_tree().change_scene("res://Scenes/Thirsty.tscn")
