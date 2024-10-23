extends Node

var hand = 0

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

var deck_order = [""]
var cards_drawn = 0
