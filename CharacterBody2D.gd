extends CharacterBody2D


var SPEED = 300.0
var JUMP_VELOCITY = -400.0
var direction = 200.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _stopPlayer():
	if Variaveis.stopPlayer != 0:
		if  Input.is_action_pressed("ui_left") or  Input.is_action_pressed("ui_right"):
			$animacao.play("stay")
		velocity.x=0.0
		velocity.y=0.0
		SPEED=0.0
		JUMP_VELOCITY=0.0
		direction=0.0
	else:
		pass

func _physics_process(delta):
	_stopPlayer()
	if not is_on_floor():
		velocity.y += gravity * delta
	 #direita
	if Input.is_action_pressed("ui_right"):
		$animacao.play("walk_right")
		velocity.x = direction	
	elif Input.is_action_pressed("ui_left"):
		#esquerda
		$animacao.play("walk_left")		
		velocity.x =-direction	
	elif Input.is_action_just_pressed("ui_up") and  is_on_floor():
		$animacao.play("walk_jump")	
		velocity.y=JUMP_VELOCITY
	if not Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right") and is_on_floor():
			$animacao.play("stay")
			velocity.x=0
	else:
		pass

	move_and_slide()
