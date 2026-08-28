extends XRNode3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	return
	var hand_tracker : XRHandTracker = XRServer.get_tracker('/user/hand_tracker/left')
	if hand_tracker:
		if hand_tracker.has_tracking_data:
			if hand_tracker.hand_tracking_source == XRHandTracker.HAND_TRACKING_SOURCE_UNKNOWN:
				print("Hand tracking source unknown")
			elif hand_tracker.hand_tracking_source == XRHandTracker.HAND_TRACKING_SOURCE_UNOBSTRUCTED:
				print("Hand tracking source is optical hand tracking")
			elif hand_tracker.hand_tracking_source == XRHandTracker.HAND_TRACKING_SOURCE_CONTROLLER:
				print("Hand tracking data is inferred from controller data")
			else:
				print("Unknown hand tracking source ", hand_tracker.hand_tracking_source)
		else:
			print("Hand is currently not being tracked")
	else:
		print("No hand tracker registered")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
