extends CharacterBody3D


const SPEED = 15.0
const JUMP_VELOCITY = 14


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	#this should make your speed change depending on inputs
	if Input.is_action_pressed("Up"):
		velocity.z = 40
	elif Input.is_action_pressed("Down"):
		velocity.z = 20
	else:
		velocity.z = 30
		
	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if is_on_floor():
		$catBananaLOW/AnimationPlayer.play("walk")
#	elif Input.is_action_pressed("Up"):
#		$catBananaLOW/AnimationPlayer.play("run")
	else:
		$catBananaLOW/AnimationPlayer.play("Jump")
		
	# Get the input direction and handle the movement/deceleration.
	var input_dir := Input.get_vector("Right", "Left", "Up", "Down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()


func _on_kill_box_body_entered(body: Node3D) -> void:
	pass # Replace with function body.
