def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return input = gets.chomp
end

def end_game(bust)
  puts "Sorry, you hit #{bust}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  return sum
end

def hit?(num)
  prompt_user
  answer = get_user_input
  if answer.downcase == "h"
    return deal_card + num
  end
  return num
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards_total = initial_round
  until cards_total > 21
    cards_total = hit?(cards_total)
    display_card_total(cards_total)
  end
  end_game(cards_total)
end