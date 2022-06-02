class Hangman

  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
  end

  def words
    [
      ["cricket", "A game played by gentlemen"],
      ["jogging", "We are not walking..."],
      ["celebrate", "Special moment"],
      ["continent", "There are 7"],
      ["exotic", "Not from around here"],

    ]
  end

  def print_teaser
    word_teaser = ""

    @word.first.size.times do
      word_teaser += "_ "
    end

    puts word_teaser

  def make_guess
    puts "Enter a letter"
    guess = gets.chomp
  end

  # ask user for letter
  def begin
    puts "New game started... your word is #{ @word.first.size} characters long"
    print_teaser
    puts "your clue is #{ @word.last }"
   
    
  end
end

game = Hangman.new
game.begin
