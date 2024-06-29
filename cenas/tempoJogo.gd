extends Label

var timer = Timer.new()
func _ready():
	timer = Timer.new()
	timer.wait_time = Variaveis.tempo  # Tempo em segundos
	timer.connect("timeout",_on_timeout)
	add_child(timer)
	timer.start()

func _process(delta):
	print(Variaveis.tempo)
	print(Variaveis.moeda)
	if Variaveis.tempo != timer.wait_time:
		timer.wait_time=Variaveis.tempo
	else:
		pass
		

	if not timer.is_stopped():
		$".".text = str(round(timer.time_left))

func _on_timeout():
	print("Timer timeout!")
	$"../perdeu".visible=true
	$"../continue".visible=true
	$"../backmenu".visible=true
	Variaveis.stopPlayer=0;
	#get_tree().paused = not get_tree().paused
	timer.stop()
