class_name Character
extends CharacterBody2D

'''
Since a character could be composed different, let the decision be made in the editor, rather than
make an assumption.
'''
# What movement are we using?
@export var movement_type: Enums.MovementType
# The label to display the movement type.
@export var label_component: Label
# Which movement component are we using?
@export var movement: MovementComponent

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready() -> void:
	# Set the label to the movement type.
	label_component.text = Enums.MOVEMENT_TYPE_NAMES[movement_type]

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += movement.move_y(delta)

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction: float = Input.get_axis("ui_left", "ui_right")
	velocity.x = movement.move_x(self, direction)

	move_and_slide()
