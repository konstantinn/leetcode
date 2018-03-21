def is_palindrome(x)
  return false if x < 0

  x == palindrome?(x)
end

def palindrome?(number, reverted_number = 0)
  return reverted_number if number == 0
  palindrome?(number / 10, reverted_number * 10 + (number % 10))
end
