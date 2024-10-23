extends CharacterBody2D

@onready var speed = 500

var mouse_inside = false

var current_card_mana = 0

var current_card_position = 0

func _ready():
	if Global.hand == 1:
		self.global_position = Vector2(100,520)
	if Global.hand == 2:
		self.global_position = Vector2(260,520)
	if Global.hand == 3:
		self.global_position = Vector2(420,520)
	if Global.hand == 4:
		self.global_position = Vector2(580,520)
	if Global.hand == 5:
		self.global_position = Vector2(740,520)

	$Name.text = Global.deck_order[(Global.cards_drawn) - 1]
	
	$Mana.text = str(Global.cards[str(Global.deck_order[(Global.cards_drawn) - 1])][0])

	$Info.text = Global.cards[Global.deck_order[(Global.cards_drawn)-1]][2]
	
	current_card_mana = Global.cards[str(Global.deck_order[(Global.cards_drawn) - 1])][0]
	
	current_card_position = Global.cards_drawn
	
func _physics_process(delta):
	if Input.is_action_just_pressed("click") and mouse_inside == true and Global.mana >= current_card_mana:
		self.global_position= Vector2(580,360)
		$"Mouse detection".visible = false
		$"play timer".start()
		Global.empty_space = current_card_position
		
	if Global.empty_space == 1:
		if current_card_position == 2:
			self.global_position = Vector2(100,520)
		if current_card_position == 3:
			self.global_position = Vector2(260,520)
		if current_card_position == 4:
			self.global_position = Vector2(420,520)
		if current_card_position == 5:
			self.global_position = Vector2(580,520)
	
func _on_mouse_detection_mouse_entered():
	$"Deck of cards".scale += Vector2(5,5)
	mouse_inside = true


func _on_mouse_detection_mouse_exited():
	$"Deck of cards".scale -= Vector2(5,5)
	mouse_inside = false


func _on_play_timer_timeout():
	Global.hand -= 1
	queue_free()
