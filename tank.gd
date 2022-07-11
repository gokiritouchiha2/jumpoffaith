extends KinematicBody2D

onready var player = get_node("/root/level/player")

var preFireball = preload ("res://assets/fireball.tscn")

func _physics_process(delta):
	look_at(player.get_position())


func _on_Timer_timeout():
	var fireball = preFireball.instance()
	get_parent().call_deferred("add_child", fireball)
	fireball.position.x = self.position.x
	fireball.rotate(self.rotation)
