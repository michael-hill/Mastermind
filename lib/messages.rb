class Messages

  def welcome_message
   "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions_message
    "A beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Enter your four letter guess until you match the secret code, or enter (q)uit at any time to end the game."
  end

  def start_message
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def quit_message
     "Thanks for playing!"
  end

  def feedback_message

  end

  def end_game_message
    "Congratulations! You guessed the sequence #{} in #{} guesses over #{time}.\nWould you like to (p)lay again or (q)uit?"
  end
end
