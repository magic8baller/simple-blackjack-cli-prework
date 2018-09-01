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
    prompt_user
    input
  end
  input == "h" ? current_value += deal_card : nil
  return current_value
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  prompt_user
  hit?(current_value) ? deal_card : prompt_user
  until display_card_total(total) > 21
    end_game(total)
  end
end
