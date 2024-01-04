extends RigidBody2D

func _ready():
	var mob_types = $Anim.sprite_frames.get_animation_names()
	$Anim.play(mob_types[randi() % mob_types.size()])

func _on_notifier_screen_exited():
	queue_free()
