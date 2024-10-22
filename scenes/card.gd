extends CharacterBody2D


func _ready():
	if Global.hand == 0:
		self.global_position = $slot1.global_position
	if Global.hand == 1:
		self.global_position = $slot2.global_position
	if Global.hand == 2:
		self.global_position = $slot3.global_position
	if Global.hand == 3:
		self.global_position = $slot4.global_position
	if Global.hand == 4:
		self.global_position = $slot5.global_position


func _physics_process(delta):
	pass
