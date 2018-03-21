SYMBOLS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1_000
}.freeze

def roman_to_int(string)
  (0...string.size).reduce(0) do |result, index|
    current_int = SYMBOLS[string[index]]
    next_char = string[index + 1]
    next_int = SYMBOLS[next_char] unless next_char.nil?

    if next_int && current_int < next_int
      result - current_int
    else
      result + current_int
    end
  end
end
