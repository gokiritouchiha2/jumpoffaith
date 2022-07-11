extends Node2D

func _ready():
	pass 

func _on_obstacles_area_entered(area):
	if area.is_in_group("player"):
		get_tree().reload_current_scene()

	
func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		get_tree().change_scene("res://scene/level2.tscn")
