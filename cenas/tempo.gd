extends Timer

var timer = Timer.new()

func _on_timeout():
	print("Timer timeout!")


func _process(delta):
		$"../tempoJogo".text=str(timer.time_left)
		print(timer.time_left)
