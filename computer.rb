class Computer
  def initialize
    @guess = []
    @turns = 12
  end

  def make_code(colors)
    @code = colors.sample(4)
  end

  def make_guess(colors)
    @guess.push(colors.sample(4))
  end
end