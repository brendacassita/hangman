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

  # ask user for letter
  def begin
    puts "New game started... your clue is #{ @word.last}"
    puts "Enter a new letter"
    guess = gets.chomp
    puts "You guess #{guess}" 
  end

end

game = Hangman.New
game.begin
