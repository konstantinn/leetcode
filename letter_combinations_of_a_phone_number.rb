MAPPING = {
  '2' => %w(a b c),
  '3' => %w(d e f),
  '4' => %w(g h i),
  '5' => %w(j k l),
  '6' => %w(m n o),
  '7' => %w(p q r s),
  '8' => %w(t u v),
  '9' => %w(w x y z)
}.freeze

def letter_combinations(digits)
  combine(digits.chars)
end

def combine(digits, results = [])
  return results if digits.none?
  letters = MAPPING.fetch(digits.shift, [])
  return combine(digits, letters) if results.none?

  new_result = results.each_with_object([]) do |l1, arr|
    letters.each { |l2| arr << [l1, l2].join }
  end

  combine(digits, new_result)
end
