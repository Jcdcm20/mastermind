require_relative 'game'
require_relative 'human'
require_relative 'computer'
require_relative 'board'

puts 'Welcome to mastermind, the code guessing game.'
puts 'How would you like to play?'
puts '1 - Codebreaker'
puts '2 - Codeguesser'
mode = gets.chomp.to_i


Game.new(mode).play