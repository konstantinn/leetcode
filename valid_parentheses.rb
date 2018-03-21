BRACKETS = {
  '(' => ')',
  '[' => ']',
  '{' => '}'
}.freeze

OPEN_BRACKETS = BRACKETS.keys

def is_valid(s)
  return false if s.size < 2

  stack = s.chars.each_with_object([]) do |char, array|
    if OPEN_BRACKETS.include?(char)
      array.push(char)
    else
      return false if BRACKETS[array.pop] != char
    end
  end

  stack.empty?
end
