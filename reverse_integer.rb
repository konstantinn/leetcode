def reverse(num)
  return 0 if num.bit_length >= 32
  abs = num.abs
  is_negative = num != abs
  result = do_reverse_of(abs).call
  return 0 if result.bit_length >= 32
  is_negative ? -(result) : result
end

def do_reverse_of(initial_num)
  do_reverse = lambda do |num = initial_num, reverted = 0|
    return reverted if num.zero?
    do_reverse.(num / 10, reverted * 10 + num % 10)
  end
end
