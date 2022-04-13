extends Spatial

var mouse_sense = 0.09

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * mouse_sense))
		$Head.rotate_x(deg2rad(-event.relative.y * mouse_sense))

func _process(delta: float) -> void:
	$Head/MainCam/Viewport/ScopeCam.global_transform = $Head/MainCam/Viewmodel/CamRoot.global_transform

	if Input.is_action_pressed("alt_fire"):
		$Head/MainCam/Viewmodel.translation = $Head/MainCam/Viewmodel.translation.linear_interpolate(Vector3.ZERO, 20 * delta)
	else:
		$Head/MainCam/Viewmodel.translation = $Head/MainCam/Viewmodel.translation.linear_interpolate(Vector3(0.427, 0, 0), 20 * delta)
