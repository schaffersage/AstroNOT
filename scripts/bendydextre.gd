extends Node3D

@onready var target_node = $Armature/ArmTarget
@export var is_left : bool

func _ready() -> void:
	pass
func _process(_delta: float) -> void:
	if is_left:
		target_node.position = to_local(Global.left_position)
	else:
		target_node.position = to_local(Global.right_position)
