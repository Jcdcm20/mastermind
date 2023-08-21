class Board
  attr_reader :code, :guesses

  def initialize(codebreaker, codemaker)
    @codebreaker = codebreaker
    @codemaker = codemaker
    @colors = ['red', 'blue', 'yellow', 'pink', 'brown', 'black']
    @guesses = []
  end

  def get_code
    #@code = @codemaker.make_code(@colors)
    @code = ['blue', 'yellow', 'pink', 'red']
  end

  def get_guess
    @codebreaker.make_guess(@colors)
  end

  def show_code
    p @code
  end

  def add_guess(guess)
    @guesses.push(guess)
  end
end