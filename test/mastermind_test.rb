require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/mastermind'
require './lib/messages'
class MastermindTest < Minitest::Test

  def test_letters_are_valid
    mm = Mastermind.new
    guess_array = ["R", "G", "B", "Y"]
    assert_equal true, mm.valid_letters?(guess_array)
  end

  def test_letters_are_not_valid
    mm = Mastermind.new
    guess_array = ["R", "G", "Z", "Y"]
    assert_equal false, mm.valid_letters?(guess_array)
  end

  def test_it_can_take_a_valid_guess
    mm = Mastermind.new
    guess = "RRY"
    assert_equal false, mm.valid_guess?(guess)

    guess = "BRGY"
    assert_equal true, mm.valid_guess?(guess)
  end

  def test_it_can_compare_one_match
    mm = Mastermind.new
    secret = ["R", "R", "G", "B"]
    guess = ["G", "R", "B", "Y"]
    expected = 1
    assert_equal expected, mm.compare_positions(secret, guess)
  end

  def test_it_can_compare_three_matches
    mm = Mastermind.new
    secret = ["R", "R", "G", "B"]
    guess = ["G", "R", "G", "B"]
    expected = 3
    assert_equal expected, mm.compare_positions(secret, guess)
  end

end
