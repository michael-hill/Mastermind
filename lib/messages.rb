module Messages

  def welcome_message
   puts "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions_message
    puts "A beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Enter your four letter guess until you match the secret code, or enter (q)uit at any time to end the game."
  end

  def start_message
    puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess:"
  end

  def quit_message
     puts "Thanks for playing!"
  end

  def feedback_message(guess, correct_positions, count, colors)
    puts "#{guess} has #{colors} of the correct elements with #{correct_positions} in the correct positions. You've taken #{count} guesses"
  end

  def incorrect_input
    puts "Please use correct input of (r)ed, (g)reen, (b)lue, and (y)ellow or (q)uit. If you are already playing, enter guess."
  end

  def end_game_message(guess, time, count)
    puts "Congratulations! You guessed the sequence #{guess} in #{count} guesses over #{time}.\nWould you like to (p)lay again or (q)uit?"
  end

  def cheat_message(loser)
    puts "Ok LOSER...here is the secret: #{loser}. NOW see if you can win."
  end

end
