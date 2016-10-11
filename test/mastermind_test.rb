require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/mastermind'
require './lib/messages'
class MastermindTest < Minitest::Test

  def test_letters_are_valid
    mm = Mastermind.new
    guess_array = ["R", "G", "B", "Y"]
    valid_array = ["R", "G", "B", "Y"]
    assert_equal true, mm.valid_letters?(guess_array)
  end

  def test_letters_are_not_valid
    mm = Mastermind.new
    guess_array = ["R", "G", "Z", "Y"]
    valid_array = ["R", "G", "B", "Y"]
    assert_equal false, mm.valid_letters?(guess_array)
  end
  def test_it_can_compare
    skip
    secret = ["R", "R", "G", "B"]
    guess = ["G", "R", "B", "Y"]
    expected = [false, true, false, false]
    actual = Mastermind.new.compare(secret, guess)
    assert_equal expected, actual
  end

  def test_it_can_return_number_of_elements_in_correct_position
    comparison = [false, true, false, true]
    expected = 2
    actual = Mastermind.new.correct_elements_in_correct_position
    assert_equal expected, actual
  end
end
