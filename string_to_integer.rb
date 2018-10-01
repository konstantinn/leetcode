require "set"

NUMS = Set.new(("1".."9").to_a)
SIGNS = Set.new(%w(+ -))
ZERO = "0".freeze
MAX_INT = 2 ** 31
MIN_INT = -2 ** 31

def my_atoi(str)
  chars = str.strip.chars
  result = ints_from(chars)
  return 0 if result.none?
  num = Integer(result.join)
  return MAX_INT - 1 if num > MAX_INT - 1
  return MIN_INT if num < MIN_INT
  num
end

def ints_from(chars)
  sign = nil
  result = []
  non_zero_found = false
  chars.each_with_index do |char, index|
    case
    when SIGNS.include?(char)
      break if sign || index != 0
      sign = char
      next
    when NUMS.include?(char)
      non_zero_found = true
      result << char
    when char == ZERO
      next unless non_zero_found
      result << char
    else
      break
    end
  end

  result.any? ? result.unshift(sign) : result
end