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

  def teaser
    word_teaser = ""

    @word.first.size.times do
      word_teaser += "_ "
    end

    puts word_teaser

  # ask user for letter
  def begin
    puts "New game started... your word is #{ @word.first.size} characters long"
    puts "your clue is #{ @word.last }"
    puts "Enter a new letter"
    guess = gets.chomp
    
  end
end

game = Hangman.new
game.begin
