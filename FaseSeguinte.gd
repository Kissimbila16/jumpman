extends Area2D

var lv = 1		

func _on_body_entered(body):
	if "player" in body.name:
		$"../textoFinal".visible=true
		Variaveis.stopPlayer=10;
		Variaveis.level+=lv		
		nivel_seguinte()

		
func nivel_seguinte():
	get_tree().change_scene_to_file("res://cenas/fase_01.tscn")		
	Variaveis.stopPlayer=0;
	
