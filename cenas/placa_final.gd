extends Area2D

func _on_body_entered(body):
	if body.name == "player":
		$"../terminado".visible=true
		get_tree().paused = not get_tree().paused
