extends CanvasLayer

func _physics_process(delta):
	$coinsNumber.text = str(Singleton.coins)
