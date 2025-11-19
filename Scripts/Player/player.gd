extends CharacterBody2D
class_name PlayerController

const speed= 500.0
const jumpPower = -500.0
@export var direction = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y = jumpPower

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("right"):
		direction = 1
		velocity.x += speed * delta
	elif Input.is_action_pressed("left"):
		direction = -1
		velocity.x += -speed * delta

	move_and_slide()
