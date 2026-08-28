extends Control

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	pass

func _on_start_button_pressed() -> void:
	pass # move to first task get_tree().change_scene_to_file('')

func _on_exit_button_pressed() -> void:
	get_tree().quit()
