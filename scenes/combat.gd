extends Node2D

var card = preload("res://scenes/card.tscn")





func draw():
	var card_insta = card.instantiate()
	add_child(card_insta)
	
func _ready():
	for i in Global.cards["HealthPotion"][1]:
		Global.deck_order.append("HealthPotion")
	for i in Global.cards["AsetialRecall"][1]:
		Global.deck_order.append("AsetialRecall")
	for i in Global.cards["Slash"][1]:
		Global.deck_order.append("Slash")
	for i in Global.cards["SwordStance"][1]:
		Global.deck_order.append("SwordStance")
	for i in Global.cards["Fireball"][1]:
		Global.deck_order.append("Fireball")
	for i in Global.cards["ManaPotion"][1]:
		Global.deck_order.append("ManaPotion")
	for i in Global.cards["HammerSmash"][1]:
		Global.deck_order.append("HammerSmash")
	for i in Global.cards["Evasion"][1]:
		Global.deck_order.append("Evasion")
	for i in Global.cards["BlackLotus"][1]:
		Global.deck_order.append("BlackLotus")
	for i in Global.cards["PoisonAttack"][1]:
		Global.deck_order.append("PoisonAttack")
		
	Global.deck_order.shuffle()
	print(Global.deck_order)
	for i in 3:
		Global.cards_drawn += 1
		Global.hand += 1
		draw()
		
func _process(delta):
	pass
	
