colors = ['Blue', 'Yellow', 'Pink', 'Red', 'Green', 'Orange']

def select_code(colors)
  return Array.new(4) { colors.sample }
end

def make_guess()
  guess = []
  i = 1
  while i <= 4
    puts "Enter color #{i}"
    color = gets.capitalize
    guess.push(color)
  
    i += 1
  end

  return guess
end

code = select_code(colors)
guess = make_guess()

puts guess