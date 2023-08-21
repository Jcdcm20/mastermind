class Human
  def initialize
    @code = []
    @guess = []
    @turns = 12
  end

  def make_code(colors)
    p colors
    puts 'Please enter 4 colors separeted by spaces: '
    @code = gets.chomp.split(' ') 
  end

  def make_guess(colors)
    @guess = []
    puts 'Please enter you guess:'
    temp = gets.chomp.split
    if check_len(temp) && check_colors(colors, temp)
      temp.each do |color|
        @guess.push(color)
      end
    else
      puts 'Incorrect guess format'
      make_guess(colors)
    end

    @guess
  end

  def check_len(guess)
    if guess.length < 4 || guess.length > 4
      return false
    end
    true
  end

  def check_colors(colors, guess)
    (guess - colors).empty?
  end
end