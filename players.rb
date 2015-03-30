class HumanPlayer

  def initialize
    @secret_word = ''
    @correct_guesses = []
  end

  def guess
    input = gets.chomp
    input
  end

  def pick_secret_word
    @secret_word = @dictionary.sample
    @correct_guesses = Array.new(@secret_word.length)
  end

  def check_guess

  end

  def handle_guess_response

  end

end

class ComputerPlayer

  attr_reader :secret_word_length

  def initialize
    @dictionary = File.readlines("dictionary.txt")
    @dictionary = @dictionary.map { |line| line.chomp }
    @secret_word = ''
    @secret_word_length = 0
    @correct_guesses = []
  end

  def pick_secret_word
    @secret_word = @dictionary.sample
    @secret_word_length = @secret_word.length
    @correct_guesses = Array.new(@secret_word_length)
  end

  def check_guess(guess)
    guess.split('').each_index do |index|
      @correct_guesses[index] = guess if @secret_word[index] = guess
    end
    @correct_guesses
  end

  def handle_guess_response

  end

end
