extends CharacterBody2D

@onready var speed = 500




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

	$Name.text = Global.deck_order[Global.cards_drawn]
	
	$Mana.text = Global.cards[str(Global.deck_order[(Global.cards_drawn) + 1])][0]

func _physics_process(delta):
	pass
