class Blackjack

  def welcome
    puts "Welcome to the Blackjack Table"
  end

  def deal_card
    rand(1..11)
  end

  def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
  end

  def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  end

  def get_user_input
    gets.chomp
  end

  def end_game(card_total)
    if card_total > 21
      puts "Sorry, you hit #{card_total}. Thanks for playing!"
    end
  end

  def initial_round
    current_total = deal_card + deal_card
    display_card_total(current_total)
    current_total 
  end

  def hit?(current_total)
    prompt_user
    input = get_user_input

    if input == 's'
      current_total
    elsif input == 'h'
      current_total = current_total + deal_card
      current_total
    else
      invalid_command
    end
  end

  def invalid_command
    puts "Please enter a valid command"
  end

  def runner
    welcome 
    current_total = initial_round 
    #current hand is total of first two cards dealt
    until current_total > 21 || current_total == 21 do
      current_total = hit?(current_total)
      display_card_total(current_total)
    end
    if current_total == 21
      puts "You win!"
    end
    end_game(current_total)
  end

end
      
