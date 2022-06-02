extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("attack"):
		# GrassEffect is the scene, grassEffect is a node with an instance of the scene
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		# adds node to list to be removed from game
		queue_free()
