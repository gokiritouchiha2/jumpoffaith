extends Node

var coins = 0

func playSound(sound):
	
	if sound == "coin":
		get_node("/root/level/sounds/coin").play()
		
	if sound == "impact":
		get_node("/root/level/sounds/impact").play()
		
	if sound == "cannon":
		get_node("/root/level/sounds/cannon").play()
