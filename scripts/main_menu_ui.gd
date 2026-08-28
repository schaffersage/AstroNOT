extends Control

func _ready() -> void:
	pass
func _process(_delta: float) -> void:
	pass

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/level_1.tscn')

func _on_exit_button_pressed() -> void:
	get_tree().quit()
