class_name ImpulseMovementComponent
extends MovementComponent

@export var speed: float = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

# Add the gravity.
func move_y(delta: float) -> float:
	return gravity * delta

# Move along the x-axis
func move_x(body: CharacterBody2D, direction: float) -> float:
	return impulse_movement(body, direction)


## Move in the direction of input, not taking into account max speed or friction.
func impulse_movement(body: CharacterBody2D, direction: float) -> float:
	if direction:
		return direction * speed
	else:
		return move_toward(body.velocity.x, 0, speed)