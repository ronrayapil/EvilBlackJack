extends Node
@onready var game_manager = $"../GameManager"
func _ready() -> void:
	game_manager.housestart.connect(house_start)

var cards_house = {
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
	
	## Diamonds
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
	
	## Clubs
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
var house: int = 0
var house_ace: int = 0
var houseendvalue: int = 0
@onready var house_value_text = $"../HouseCardValue"
var acetext: bool
func house_start() -> void:
	acetext = false
	aceok = true
	clearcards()
	house = 0
	house_ace = 0
	cardxaxis = 0
	hithouse()
	await get_tree().create_timer(1.0).timeout
	load_blank_house()

# ----HIT-----
#Gets a Random Card, then Delets it
var aceok: bool
func hithouse():
	if not cards_house:
		print("no cards lol")
	else:
		var random_card = cards_house.keys().pick_random()
		var card_data = cards_house[random_card]
		var card_value = card_data["value"]
		var card_texture = card_data["texture"]
		render_house_card(card_texture)
		if card_value == 1:
			house += 1
			if aceok == true and (house_ace + 11) <= 21:
				house_ace += 11
				aceok = false
				acetext = true
			else:
				house_ace += 1
		else:
			house += card_value
			house_ace += card_value
			
		if acetext == true and house_ace <= 21:
			var housetext = "House : %s / %s"
			house_value_text.text = housetext % [house, house_ace]
			houseendvalue = house_ace
		else:
			var housetext ="House : %s"
			house_value_text.text = housetext % house
			houseendvalue = house


			
var cardxaxis = -80
@onready var card_scene:PackedScene = preload("res://card.tscn")
func render_house_card(card_texture):
	var new_card = card_scene.instantiate()
	new_card.texture = card_texture
	new_card.position = Vector2(cardxaxis,-150)
	cardxaxis += 40
	print(cardxaxis)
	add_child(new_card)
	
func load_blank_house() -> void:
	var new_card = card_scene.instantiate()
	new_card.texture = preload("res://assets/cards/card_empty.png")
	new_card.position = Vector2(cardxaxis,-150)
	print(cardxaxis)
	add_child(new_card)

func stand(player) -> void:
	var child = get_child(1)
	child.queue_free()
	while houseendvalue <= 16:
		hithouse()
		await get_tree().create_timer(1.0).timeout
	if houseendvalue == 21:
		game_manager.lose()
	elif houseendvalue > 21:
		game_manager.win()
	elif houseendvalue > player:
		game_manager.lose()
	elif houseendvalue < player:
		game_manager.win()
	elif houseendvalue == player:
		game_manager.push()

func clearcards() -> void:
	for child in get_children():
		if child is Sprite2D:
			child.queue_free()
