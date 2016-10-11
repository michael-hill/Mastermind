require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/messages'

class MessagesTest < Minitest::Test

  def test_welcome_message
    messages = Messages.new

    result = "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"

    assert_equal result, messages.welcome_message
  end

  def test_instructions_message
    messages = Messages.new

    result = "A beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Enter your four letter guess until you match the secret code, or enter (q)uit at any time to end the game."

    assert_equal result, messages.instructions_message
  end

  def test_game_start_message
    messages = Messages.new

    result = "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"

    assert_equal result, messages.start_message
  end

  def test_quit_message
    messages = Messages.new

    result =  "Thanks for playing!"

    assert_equal result, messages.quit_message
  end

end
