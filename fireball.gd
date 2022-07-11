extends KinematicBody2D

func _ready():
	pass

func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		Singleton.playSound("impact")
		get_tree().reload_current_scene()
