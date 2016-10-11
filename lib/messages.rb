module Messages

  def welcome_message
   puts "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions_message
    puts "A beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Enter your four letter guess until you match the secret code, or enter (q)uit at any time to end the game."
  end

  def start_message
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def quit_message
     puts "Thanks for playing!"
  end

  def feedback_message
    puts "'#{} has #{} of the correct elements with #{} in the correct positions
    You've taken 1 guess"
  end

  def incorrect_input
    puts "Please use correct input of (r)ed, (g)reen, (b)lue, and (y)ellow or (q)uit. If you are already playing, enter guess."
  end

  def end_game_message
    puts "Congratulations! You guessed the sequence #{} in #{} guesses over #{time}.\nWould you like to (p)lay again or (q)uit?"
  end


end
# cheat message
# the secret is #{@secret.join}.
