extends XROrigin3D

const BUBBLE_RADIUS = 1.0

@onready var left_controller = $XRControllerLeft
@onready var right_controller = $XRControllerRight

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	Global.left_position = to_global(left_controller.position)
	Global.right_position = to_global(right_controller.position)
