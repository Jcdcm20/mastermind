class Game
  def initialize(mode)
    @winner = false
    @feedback = ['x', 'x', 'x', 'x']
    if mode == 1
      @board = Board.new(Human.new, Computer.new)
    else
      @board = Board.new(Computer.new, Human.new)
    end
  end

  def play
    until @winner || @board.guesses.length > 12
      @board.get_code
      guess = @board.get_guess

      check_win(guess) ? @winner = true : check_guess(guess)

      if @winner
        puts 'You got it right!'
        @board.show_code
      else
        puts 'You guessed it wrong'
        print "#{@feedback} \n"
      end
    end
  end

  def check_win(guess)
    @board.code == guess
  end
  
  def check_guess(guess)
    guess.each_with_index do |color, index|
      if @board.code.include?(color)
        if @board.code[index] == color
          @feedback[index] = color.upcase
        else
          @feedback[index] = "#{color}*"
        end
      end
    end
  end
end