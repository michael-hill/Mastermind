require_relative 'messages'

class Mastermind
  include Messages
  attr_reader :secret
  attr_accessor :started
                :guess_counter

  def initialize
    @secret = generate_secret
    @guess_counter = 0
    @started = false
    @start_time = nil
    @stop_time = nil
  end

  def generate_secret
    colors = ["R", "G", "B", "Y"]
    result = []
    4.times do
      result << colors.shuffle.first
    end
    result
  end

  def start_timer
    @start_time = Time.now
  end

  def stop_timer
    @stop_time = Time.now
  end

  def game_timer
    @stop_time - @start_time
  end

  def time_taken(secs)
    time_collection = [[60, :seconds], [60, :minutes], [24, :hours], [1000, :days]]
    result = time_collection.map do |count, name|
    if secs > 0
      secs, n = secs.divmod(count)
      "#{n.to_i} #{name}"
    end
    end.compact.reverse.join(' ')
    result
  end

  def user_input
    gets.chomp.upcase
  end

  def started?
    @started
  end

  def process_input(user_input)
    if user_input == "Q" || user_input == "QUIT"
      return quit_game
    elsif (user_input == "P" || user_input == "PLAY") && !started?
      start_game
    elsif (user_input == "I" || user_input == "INSTRUCTIONS") && !started?
      game_instructions
    elsif (user_input == "C" || user_input == "CHEAT") && started?
      cheater
    elsif valid_guess?(user_input) && started?
      game_play(user_input)
    else
      read_directions
    end
  end

  def start_game
    @secret = generate_secret
    @started = true
    @guess_counter = 0
    start_message
    start_timer
    process_input(user_input)
  end

  def quit_game
    quit_message
    abort
  end

  def game_play(guess)
    guess_array = guess.chars
    correct_positions = compare_positions(secret, guess_array)
    colors = correct_colors(secret, guess_array)
    feedback_message(guess, correct_positions, @guess_counter, colors)
    process_input(user_input)
  end

  def intro_message
    welcome_message
    process_input(user_input)
  end

  def read_directions
    incorrect_input
    process_input(user_input)
  end

  def game_instructions
    instructions_message
    process_input(user_input)
  end

  def cheater
    help = secret.join
    cheat_message(help)
    process_input(user_input)
  end

  def valid_guess?(guess)
    guess_array = guess.chars
    guess_array.length == 4 && valid_letters?(guess_array)
  end

  def valid_letters?(guess_array)
    valid_key = ["R", "G", "B", "Y"]
    guess_array.all? do |letter|
      valid_key.include?(letter)
    end
  end

  def compare_positions(secret, guess)
    @guess_counter += 1
    return win(guess) if guess == secret
    result = guess.zip(secret).map { |guess, secret| guess == secret }
    result.count { |element| element == true }
  end

  def correct_colors(secret, guess_array)
    correct_counter = 0
    guess_array.uniq.each do |color|
      correct_counter += 1 if secret.include?(color)
    end
    correct_counter
  end

  def win(congrats)
    stop_timer
    x = game_timer
    elapsed_time = time_taken(x)
    picks = congrats.join
    end_game_message(picks, elapsed_time, @guess_counter)
    @started = false
    process_input(user_input)
  end

end

mm = Mastermind.new
mm.intro_message
