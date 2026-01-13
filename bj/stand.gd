extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disabled = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func EnableButton() -> void:
	disabled = false
func DisableButton() -> void:
	disabled = true
