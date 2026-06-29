extends CharacterBody3D


const SPEED = 15.0
const JUMP_VELOCITY = 20
var can_animate = true

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
		if Input.is_action_pressed("Duck"):
			%catBananaCollsion.scale = Vector3(1,0.5,1)
			if can_animate == true:
				$catBananaLOW/AnimationPlayer.play("Slide")
		elif Input.is_action_pressed("Up"):
			if can_animate == true:
				$catBananaLOW/AnimationPlayer.play("run")
		else:
			%catBananaCollsion.scale= Vector3(1,1,1)
			if can_animate == true:
				$catBananaLOW/AnimationPlayer.play("walk")
	else:
		if can_animate == true:
			$catBananaLOW/AnimationPlayer.play("Jump")
	

		
	# Get the input direction and handle the movement/deceleration.
	var input_dir := Input.get_vector("Right", "Left", "Up", "Down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()

func _on_winbox_body_entered(body: Node3D) -> void:
	can_animate = false
	$catBananaLOW/AnimationPlayer.play("Win")
	await $catBananaLOW/AnimationPlayer.animation_finished
	get_tree().paused = true
