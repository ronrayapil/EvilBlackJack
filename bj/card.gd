extends Sprite2D

func _ready() -> void:
	var tween = create_tween()
	var tween2 = create_tween()
	
	tween.tween_property(self, "scale", Vector2(3, 3), 0.5).set_trans(Tween.TRANS_ELASTIC)
	tween2.tween_property(self, "rotation", (0), 0.5).set_trans(Tween.TRANS_ELASTIC)
	
	
