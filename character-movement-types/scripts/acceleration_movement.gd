class_name AccelerationMovementComponent
extends MovementComponent

@export var acceleration: float = 10.0
@export var max_speed: float = 400.0
@export var friction: float = 25.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

# Add the gravity.
func move_y(delta: float) -> float:
	return gravity * delta

# Move along the x-axis
func move_x(body: CharacterBody2D, direction: float) -> float:
	return acceleration_movement(body, direction)


## Move in the direction of input, taking into account max speed and friction.
## Momentum increases as the input is held down, and slows down when the input direction is released, 
#or the opposite direction is pressed.
func acceleration_movement(body: CharacterBody2D, direction: float) -> float:	
	# accelerate if there is input until reaching max speed
	if direction != 0:
		return move_toward(body.velocity.x, direction * max_speed, acceleration)
	# slow down
	else:
		return move_toward(body.velocity.x, 0, friction)
