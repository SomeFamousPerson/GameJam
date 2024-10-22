extends Node2D

@onready var card = $card

var cards = {
"HealthPotion":[2,2],   #Increases player health +5
"AsetialRecall":[2,1], #Draw 3 cards
"Slash":[1,3],          #Attack for 3 damage
"SwordStance":[2,2],   #Double damage for 3 attacks
"Fireball":[5,2],       #Deals 4 damage to all enemies
"ManaPotion":[0,2],    #Permanent mana increase +1
"HammerSmash":[3,1],   #Attack for 6 damage
"Evasion":[1,2],        #Dodges the next 2 attacks
"Sheild":[2,2],         #Permanently negates all damage by 1
"BlackLotus":[0,1],    #Give 3 mana
"PoisonAttack":[2,2]}  #Deal 2 damage, +1 each turn

var deck_order = []


func _ready():
	for i in cards["HealthPotion"][1]:
		deck_order.append("HealthPotion")
	for i in cards["AsetialRecall"][1]:
		deck_order.append("AsetialRecall")
	for i in cards["Slash"][1]:
		deck_order.append("Slash")
	for i in cards["SwordStance"][1]:
		deck_order.append("SwordStance")
	for i in cards["Fireball"][1]:
		deck_order.append("Fireball")
	for i in cards["ManaPotion"][1]:
		deck_order.append("ManaPotion")
	for i in cards["HammerSmash"][1]:
		deck_order.append("HammerSmash")
	for i in cards["Evasion"][1]:
		deck_order.append("Evasion")
	for i in cards["BlackLotus"][1]:
		deck_order.append("BlackLotus")
	for i in cards["PoisonAttack"][1]:
		deck_order.append("PoisonAttack")
		
	deck_order.shuffle()
	print(deck_order)


func _process(delta):
	pass
	
