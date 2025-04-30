extends CharacterBody2D

@export var speed := 400.0

func _physics_process(delta: float) -> void:
	var input := Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = input * speed
	velocity.y = 0                  # Kein Vertical-Move
	move_and_slide()               # CharacterBody2D-Methode
