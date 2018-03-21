SYMBOLS = {
  1 => 'I',
  4 => 'IV',
  5 => 'V',
  9 => 'IX',
  10 => 'X',
  40 => 'XL',
  50 => 'L',
  90 => 'XC',
  100 => 'C',
  400 => 'CD',
  500 => 'D',
  900 => 'CM',
  1_000 => 'M'
}.freeze

KEYS = SYMBOLS.keys.sort.reverse!

def int_to_roman(num, current_roman = '' , sum = 0)
  remaining = num - sum
  return current_roman if remaining.zero?
  index = KEYS.find_index { |key| remaining >= key  }
  current_int = KEYS[index]
  int_to_roman(num, current_roman + SYMBOLS[current_int], sum + current_int)
end
