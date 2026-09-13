extends CharacterBody2D

@export var speed = 400
@export var grav = 400
@export var jump = 400
var dir

func _physics_process(delta: float) -> void:
	dir = Input.get_axis("left","right");
	velocity.x = dir * speed
	if not is_on_floor():
		velocity.y += grav*delta
	else:
		velocity.y -= jump
	move_and_slide()


	
