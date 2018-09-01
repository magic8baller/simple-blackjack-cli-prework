def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  rand(1..11)
end


def display_card_total(total)
  puts "Your cards add up to #{total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  input = gets.chomp
end


def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end


def initial_round
  round1 = deal_card + deal_card
  display_card_total(round1)
  round1
end


def hit?(current_value)
  prompt_user
  input = get_user_input
  while input != "s" && input != "h"
    invalid_command
  end
  input == "h" ? current_value += deal_card : nil
  return current_value
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
