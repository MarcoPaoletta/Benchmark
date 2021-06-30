extends MarginContainer

func _physics_process(delta):
	$HBoxContainer/VBoxContainer/FPS.text = "FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))
	$HBoxContainer/VBoxContainer/Memory.text = "Memory: " + str(round(Performance.get_monitor(Performance.MEMORY_STATIC)/1024/1024)) + " MB"

	if OS.is_vsync_enabled():
		$HBoxContainer/VBoxContainer/Button.set_modulate(Color(0.505882, 0.847059, 0.164706))
	else:
		$HBoxContainer/VBoxContainer/Button.set_modulate(Color(0.917969, 0.294765, 0.103989))

func _on_Button_pressed():
	OS.vsync_enabled = !OS.vsync_enabled


