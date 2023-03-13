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
    puts 'You guessed it right!'
  else
    code.each_with_index do |color, index|
      guess.each_with_index do |tent, i|
        if tent == color && index == i
          check[index] = color
        end
      end
    end
  end
  return check
end

sample_code = ['Blue', 'Yellow', 'Pink', 'Red']
code = select_code(COLORS)
guess = make_guess()

answer = check_guess(guess, sample_code)

puts answer