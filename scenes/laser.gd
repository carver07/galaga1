extends Area2D

var speed: int = -250

func start(pos):
	position = pos

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	position.y += speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemies"):
		area.explode()
		queue_free()


func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	queue_free()
