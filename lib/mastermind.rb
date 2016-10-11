require_relative 'messages'

class Mastermind
  include Messages

  def initialize
    @secret = generate_secret
  end

  def generate_secret
    colors = ["R", "G", "B", "Y"]
    result = []
    4.times do
      result << colors.shuffle.first
    end
    result
  end

  def user_input
    gets.chomp.upcase
  end

  # compare two arrays and puts feedback

  def process_input(user_input, status=nil)
    if (user_input == "P" || user_input == "PLAY") && status != "started"
      start_game
    elsif (user_input == "I" || user_input == "INSTRUCTIONS") && status != "started"
      game_instructions
    elsif user_input == "Q" || user_input == "QUIT"
      quit_message
    elsif valid_guess?(user_input)
    else
      read_directions
    end
  end

  def intro_message
    welcome_message
    process_input(user_input)
  end

  def read_directions
    incorrect_input
    process_input(user_input)
  end

  def start_game
    start_message
    process_input(user_input, "started")
  end

  def game_instructions
    instructions_message
    process_input(user_input)
  end

  def valid_guess?(guess)
    guess_array = guess.chars
    guess_array.length == 4 && valid_letters?(guess_array)
  end

  def valid_letters?(guess_array)#=> array of user input letters ["R", "Y", "B", "G"]
    valid_key = ["R", "G", "B", "Y"]
    guess_array.all? do |letter|
      valid_key.include?(letter)
    # guess_array.each do |letter|
    #   return false unless valid_key.include?(letter)
    # end
    # return true
    end
   end

  def compare(secret, guess)
    guess.zip(secret).map { |guess, secret| guess == secret }
  end

  def correct_elements_in_correct_position
    count = 0
    compare.each do |i|
      if i == true
        count += 1
      else
      end
    end
    count
  end


end
# mm = Mastermind.new
# mm.intro_message
