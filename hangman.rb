require "./players.rb"

class Hangman

  def self.play
    game = Hangman.new(HumanPlayer.new, ComputerPlayer.new)
    game.run
  end

  def initialize(guesser, checker)
    @guesser = guesser
    @checker = checker
    @correct_guesses = []
  end


  def run
    @checker.pick_secret_word
    @correct_guesses = Array.new(@checker.secret_word_length)
    until @correct_guesses.none? { |el| el.nil? }
      puts "Provide letter!"
      guess = @guesser.guess
      @correct_guesses = @checker.check_guess(guess)
      puts display
    end
    puts "You win!"
  end

  def display
    @correct_guesses.map { |el| el.nil? ? "_" : el }.join('')
  end

end
