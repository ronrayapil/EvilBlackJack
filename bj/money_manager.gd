extends Node
@onready var money_text = $"../Money"
@onready var betsize_text = $"../BetSize"

var bet_options_locked = [5,10,20,50,100]
var bet_options_unlocked = [1]
var money: int = 5
var bet_amount: int
var current_bet_index = 0

func check_unlock() -> void:
	if money >= bet_options_locked[0]:
		bet_options_unlocked.append(bet_options_locked[0])
		bet_options_locked.remove_at(0)
		print(bet_options_unlocked)
	#if bet_options_unlocked.size() > 1:
		#if money <= bet_options_unlocked[-1]:
			#bet_options_locked.append(bet_options_unlocked[-1])
			#bet_options_unlocked.remove_at[-1]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	money_text.text = "Money : %s" % money
	betsize_text.text = "Bet Size : %s" % bet_amount
	check_unlock()
	print(bet_options_locked,bet_options_unlocked)


func _on_bet_plus_pressed() -> void:
	current_bet_index += 1
	if current_bet_index >= bet_options_unlocked.size():
		current_bet_index = 0
	bet_amount = bet_options_unlocked[current_bet_index]
	betsize_text.text = "Bet Size : %s" % bet_amount
		
func _on_bet_minus_pressed() -> void:
	current_bet_index -= 1
	if current_bet_index < 0:
		current_bet_index = bet_options_unlocked.size() - 1
	bet_amount = bet_options_unlocked[current_bet_index]
	betsize_text.text = "Bet Size : %s" % bet_amount
	
func starthand() -> void:
	money -= bet_amount
	money_text.text = "Money : %s" % money
	check_unlock()

func win() -> void:
	money += bet_amount * 2
	money_text.text = "Money : %s" % money
	check_unlock()

func push() -> void:
	money += bet_amount 
	money_text.text = "Money : %s" % money
