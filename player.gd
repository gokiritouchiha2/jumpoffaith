extends KinematicBody2D 

var velocity = Vector2(0,0)
const SPEED = 128
const GRAVITY = 15
const JUMPFORCE = -400

func _physics_process(delta):
	
	if Input.is_action_pressed("a"):
		velocity.x = -SPEED
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
		
	elif Input.is_action_pressed("d"):
		velocity.x = SPEED 
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false
	
	else:
		$AnimatedSprite.play("idle")
		
	if not is_on_floor():
		$AnimatedSprite.play("jump")
		
	if Input.is_action_just_pressed("w") and is_on_floor():
		velocity.y = JUMPFORCE
		
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity,Vector2.UP)
	velocity.x = lerp(velocity.x,0,0.2)
	
	
	
	
	

