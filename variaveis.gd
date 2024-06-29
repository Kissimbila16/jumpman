extends Node

var moeda = 0
var nome = "Usuario:Djk"
var stopPlayer=0
var posPlayer=0
var level=0
var tempo = 30

func _ready():
	get_tree().change_scene_to_file("res://tela_principal.tscn")
