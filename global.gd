extends Node

var hand = 0

var cards = {
"HealthPotion":[2,2,"+5 Health"],   #Increases player health +5
"AsetialRecall":[2,1,"Draw 3 Cards"], #Draw 3 cards
"Slash":[1,3,"3 Attack"],          #Attack for 3 damage
"SwordStance":[2,2, "x2 Damage for 3 turns"],   #Double damage for 3 attacks
"Fireball":[5,2, "4 Attack to all enemies"],       #Deals 4 damage to all enemies
"ManaPotion":[0,2, "+1 Mana"],    #Permanent mana increase +1
"HammerSmash":[3,1, "6 Attack"],   #Attack for 6 damage
"Evasion":[1,2, "Dodge 2 attacks"],        #Dodges the next 2 attacks
"Sheild":[2,2, "Prevents 1 damage"],         #Permanently negates all damage by 1
"BlackLotus":[0,1, "+3 Mana"],    #Give 3 mana
"PoisonAttack":[2,2, "2 Damage, posion effect applyed"]}  #Deal 2 damage, +1 each turn

var deck_order = [""]
var cards_drawn = 0
var mana = 3
