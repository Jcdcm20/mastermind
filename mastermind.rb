COLORS = ['Blue', 'Yellow', 'Pink', 'Red', 'Green', 'Orange']

def select_code(colors)
  return Array.new(4) { colors.sample }
end

def make_guess()
  guess = []
  i = 1
  while i <= 4
    puts "Enter color #{i}"
    color = gets.capitalize.chomp

    if COLORS.include? color
      guess.push(color)
    else
      puts 'Invalid color! Try Again.'
      next
    end
    i += 1
  end

  return guess
end

def check_guess(guess, code)
  check = ['-', '-', '-', '-']
  if code == guess
    return 'You guessed it right!'
  else
    code.each_with_index do |color, index|
      guess.each_with_index do |tent, i|
        if tent == color && index == i
          check[index] = color.upcase
        elsif tent == color && index != i
          check[i] = tent + '*'
        end
      end
    end
  end
  return check
end

puts 'Welcome to mastermind, the code guessing game!'

code = select_code(COLORS)
i = 1

while i < 12
  
  guess = make_guess()

  answer = check_guess(guess, code)

  puts '----------------------------------------------------------------------------------------'
  puts 'Colors in uppercase are the ones you guessed it right.'
  puts 'Colors followed by a * symbol means the color is part of the code but in the wrong place'
  puts '----------------------------------------------------------------------------------------'
  puts answer

  i += 1
end