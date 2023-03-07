colors = ['Blue', 'Yellow', 'Pink', 'Red', 'Green', 'Orange']

def select_code(colors)
  return Array.new(4) { colors.sample }
end

code = select_code(colors)
