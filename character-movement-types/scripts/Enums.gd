class_name Enums

enum MovementType {
    IMPULSE, 
    ACCELERATION
}

# enums in godot are numbers - since we want the enum to determine the label, we will use a
# dictionary to map the enum to a string
const MOVEMENT_TYPE_NAMES: Dictionary = {
	Enums.MovementType.IMPULSE: "Impulse",
	Enums.MovementType.ACCELERATION: "Acceleration"
}
