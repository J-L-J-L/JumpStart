extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		#残っているコインの数を数える
		var remaining_coins = get_tree().get_nodes_in_group("coins").size()
		#最初の全コイン数(5個)から残りを引く
		var collected_coins = 5 - remaining_coins
		
		print("★ GAME CLEAR! ★")
		print("ゲットしたコイン: ", collected_coins, " / 5個")	
