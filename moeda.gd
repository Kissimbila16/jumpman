extends Area2D

func _on_body_entered(body):
	if body.name == "player":
		Variaveis.moeda=1+Variaveis.moeda
		Variaveis.tempo=1+Variaveis.tempo
		queue_free()
	
