extends CharacterBody2D

const ACCELERATION: float = 10.0
const FRICTION: float = 25.0
const MAX_SPEED: float = 400.0

# What movement are we using?
var label: String = "Acceleration"

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var label_node: Label = $Label as Label

func _ready() -> void:
	# Set the label to the movement type.
	label_node.text = label

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	move_player()

	move_and_slide()

func get_input() -> float:
	return Input.get_axis("ui_left", "ui_right")

func move_player() -> void:
	var direction: float = get_input()
	
	# accelerate if there is input until reaching max speed
	if direction != 0:
		velocity.x = move_toward(velocity.x, direction * MAX_SPEED, ACCELERATION)
	# slow down
	else:
		velocity.x = move_toward(velocity.x, 0, FRICTION)