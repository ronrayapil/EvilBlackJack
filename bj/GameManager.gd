extends Node
var money: int = 5
var player: int = 0
var player_ace: int = 0
@onready var player_value_text = $"../PlayerCardValue"
@onready var start_hand_button = $"../Start Hand"
@onready var housemanager = $"../House"
signal housestart
var aceok: bool = true

var cards = {
	# Hearts
	"card_hearts_A": {
		"value": 1,
		"texture": preload("res://assets/cards/card_hearts_A.png")
	},
	"card_hearts_02": {
		"value": 2,
		"texture": preload("res://assets/cards/card_hearts_02.png")
	},
	"card_hearts_03": {
		"value": 3,
		"texture": preload("res://assets/cards/card_hearts_03.png")
	},
	"card_hearts_04": {
		"value": 4,
		"texture": preload("res://assets/cards/card_hearts_04.png")
	},
	"card_hearts_05": {
		"value": 5,
		"texture": preload("res://assets/cards/card_hearts_05.png")
	},
	"card_hearts_06": {
		"value": 6,
		"texture": preload("res://assets/cards/card_hearts_06.png")
	},
	"card_hearts_07": {
		"value": 7,
		"texture": preload("res://assets/cards/card_hearts_07.png")
	},
	"card_hearts_08": {
		"value": 8,
		"texture": preload("res://assets/cards/card_hearts_08.png")
	},
	"card_hearts_09": {
		"value": 9,
		"texture": preload("res://assets/cards/card_hearts_09.png")
	},
	"card_hearts_10": {
		"value": 10,
		"texture": preload("res://assets/cards/card_hearts_10.png")
	},
	"card_hearts_J": {
		"value": 10,
		"texture": preload("res://assets/cards/card_hearts_J.png")
	},
	"card_hearts_Q": {
		"value": 10,
		"texture": preload("res://assets/cards/card_hearts_Q.png")
	},
	"card_hearts_K": {
		"value": 10,
		"texture": preload("res://assets/cards/card_hearts_K.png")
	},
	
	# Diamonds
	"card_diamonds_A": {
		"value": 1,
		"texture": preload("res://assets/cards/card_diamonds_A.png")
	},
	"card_diamonds_02": {
		"value": 2,
		"texture": preload("res://assets/cards/card_diamonds_02.png")
	},
	"card_diamonds_03": {
		"value": 3,
		"texture": preload("res://assets/cards/card_diamonds_03.png")
	},
	"card_diamonds_04": {
		"value": 4,
		"texture": preload("res://assets/cards/card_diamonds_04.png")
	},
	"card_diamonds_05": {
		"value": 5,
		"texture": preload("res://assets/cards/card_diamonds_05.png")
	},
	"card_diamonds_06": {
		"value": 6,
		"texture": preload("res://assets/cards/card_diamonds_06.png")
	},
	"card_diamonds_07": {
		"value": 7,
		"texture": preload("res://assets/cards/card_diamonds_07.png")
	},
	"card_diamonds_08": {
		"value": 8,
		"texture": preload("res://assets/cards/card_diamonds_08.png")
	},
	"card_diamonds_09": {
		"value": 9,
		"texture": preload("res://assets/cards/card_diamonds_09.png")
	},
	"card_diamonds_10": {
		"value": 10,
		"texture": preload("res://assets/cards/card_diamonds_10.png")
	},
	"card_diamonds_J": {
		"value": 10,
		"texture": preload("res://assets/cards/card_diamonds_J.png")
	},
	"card_diamonds_Q": {
		"value": 10,
		"texture": preload("res://assets/cards/card_diamonds_Q.png")
	},
	"card_diamonds_K": {
		"value": 10,
		"texture": preload("res://assets/cards/card_diamonds_K.png")
	},
	
	# Clubs
	"card_clubs_A": {
		"value": 1,
		"texture": preload("res://assets/cards/card_clubs_A.png")
	},
	"card_clubs_02": {
		"value": 2,
		"texture": preload("res://assets/cards/card_clubs_02.png")
	},
	"card_clubs_03": {
		"value": 3,
		"texture": preload("res://assets/cards/card_clubs_03.png")
	},
	"card_clubs_04": {
		"value": 4,
		"texture": preload("res://assets/cards/card_clubs_04.png")
	},
	"card_clubs_05": {
		"value": 5,
		"texture": preload("res://assets/cards/card_clubs_05.png")
	},
	"card_clubs_06": {
		"value": 6,
		"texture": preload("res://assets/cards/card_clubs_06.png")
	},
	"card_clubs_07": {
		"value": 7,
		"texture": preload("res://assets/cards/card_clubs_07.png")
	},
	"card_clubs_08": {
		"value": 8,
		"texture": preload("res://assets/cards/card_clubs_08.png")
	},
	"card_clubs_09": {
		"value": 9,
		"texture": preload("res://assets/cards/card_clubs_09.png")
	},
	"card_clubs_10": {
		"value": 10,
		"texture": preload("res://assets/cards/card_clubs_10.png")
	},
	"card_clubs_J": {
		"value": 10,
		"texture": preload("res://assets/cards/card_clubs_J.png")
	},
	"card_clubs_Q": {
		"value": 10,
		"texture": preload("res://assets/cards/card_clubs_Q.png")
	},
	"card_clubs_K": {
		"value": 10,
		"texture": preload("res://assets/cards/card_clubs_K.png")
	},
	
	# Spades
	"card_spades_A": {
		"value": 1,
		"texture": preload("res://assets/cards/card_spades_A.png")
	},
	"card_spades_02": {
		"value": 2,
		"texture": preload("res://assets/cards/card_spades_02.png")
	},
	"card_spades_03": {
		"value": 3,
		"texture": preload("res://assets/cards/card_spades_03.png")
	},
	"card_spades_04": {
		"value": 4,
		"texture": preload("res://assets/cards/card_spades_04.png")
	},
	"card_spades_05": {
		"value": 5,
		"texture": preload("res://assets/cards/card_spades_05.png")
	},
	"card_spades_06": {
		"value": 6,
		"texture": preload("res://assets/cards/card_spades_06.png")
	},
	"card_spades_07": {
		"value": 7,
		"texture": preload("res://assets/cards/card_spades_07.png")
	},
	"card_spades_08": {
		"value": 8,
		"texture": preload("res://assets/cards/card_spades_08.png")
	},
	"card_spades_09": {
		"value": 9,
		"texture": preload("res://assets/cards/card_spades_09.png")
	},
	"card_spades_10": {
		"value": 10,
		"texture": preload("res://assets/cards/card_spades_10.png")
	},
	"card_spades_J": {
		"value": 10,
		"texture": preload("res://assets/cards/card_spades_J.png")
	},
	"card_spades_Q": {
		"value": 10,
		"texture": preload("res://assets/cards/card_spades_Q.png")
	},
	"card_spades_K": {
		"value": 10,
		"texture": preload("res://assets/cards/card_spades_K.png")
	}
}

# Called when the node enters the scene tree for the first time.
@onready var hit_button = get_node("../Hit")
@onready var stand_button = get_node("../Stand")
@onready var losetext = get_node("../Lose")
@onready var handsplayedtext = get_node("../Hands Played")
@onready var wintext = get_node("../Win")
@onready var pushtext = get_node("../Push")
@onready var moneymanager = get_node("../MoneyManager")
@onready var handsplayed = 0
#----START HAND----
func _on_start_hand_pressed() -> void:
	handsplayed +=1
	var playertext ="Player : %s"
	var handsplayedt ="Hands Played : %s"
	handsplayedtext.text = handsplayedt % handsplayed
	aceok = true
	acetext = false
	player = 0
	player_ace = 0
	housemanager.clearcards()
	moneymanager.starthand()
	losetext.starthand()
	wintext.starthand()
	pushtext.starthand()
	clearplayerhand()
	hit()
	await get_tree().create_timer(1.0).timeout
	hit()
	housestart.emit()
	await get_tree().create_timer(2.0).timeout
	if player_ace != 21:
		hit_button.EnableButton()
		stand_button.EnableButton()
	

var acetext: bool = false
# ----HIT-----
#Gets a Random Card, then Delets it
func hit():
	if not cards:
		print("no cards lol")
	else:
		var random_card = cards.keys().pick_random()
		var card_data = cards[random_card]
		var card_value = card_data["value"]
		var card_texture = card_data["texture"]
		render_player_card(card_texture)
		cards.erase(random_card)
		if card_value == 1:
			player += 1
			if aceok == true and (player_ace + 11) <= 21:
				player_ace += 11 
				aceok = false
				acetext = true
			else:
				player_ace += 1
		else:
			player += card_value
			player_ace += card_value
			
		if acetext == true and player_ace <= 21:
			var playertext ="Player : %s / %s"
			player_value_text.text = playertext % [player, player_ace]
			if player_ace == 21:
				win()
			elif player > 21:
				lose()
		else:
			var playertext ="Player : %s"
			player_value_text.text = playertext % player
			if player == 21:
				win()
			elif player > 21:
				lose()
			
			
var player_cardxaxis = -100
@onready var card_scene:PackedScene = preload("res://card.tscn")
func render_player_card(card_texture):
	var new_card = card_scene.instantiate()
	new_card.texture = card_texture
	new_card.position = Vector2(player_cardxaxis,150)
	player_cardxaxis += 40
	add_child(new_card)

#HitButton
func _on_button_pressed() -> void: 
	hit()

func _on_stand_pressed() -> void:
	if player_ace >= 1:
		player = player_ace
	print(player)
	housemanager.stand(player)
	stand_button.DisableButton()
	hit_button.DisableButton()


#Player Loses
func lose() -> void:
	start_hand_button.disabled = false
	player_cardxaxis = -100
	stand_button.DisableButton()
	hit_button.DisableButton()
	losetext.losetext()

func win() -> void:
	start_hand_button.disabled = false
	player_cardxaxis = -100
	stand_button.DisableButton()
	hit_button.DisableButton()
	wintext.wintext()
	moneymanager.win()

func push() -> void:
	start_hand_button.disabled = false
	player_cardxaxis = -100
	stand_button.DisableButton()
	hit_button.DisableButton()
	pushtext.pushtext()
	moneymanager.push()
	

func clearplayerhand() -> void:
	for child in get_children():
		if child is Sprite2D:
			child.queue_free()
