extends KinematicBody2D

var knockback = Vector2.ZERO

onready var stats = $Stats

func _ready():
	print(stats.max_health)
	print(stats.health)

func _physics_process(delta):
	knockback = knockback.move_toward(Vector2.ZERO, 200 * delta)
	knockback = move_and_slide(knockback)

func _on_Hurtbox_area_entered(area):
	stats.health -= 1
	if stats.health <= 0:
		queue_free()
	print(stats.health)
	knockback = area.knockback_vector * 100 
