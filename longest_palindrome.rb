def longest_palindrome(string)
  longest = string[0]

  (0...string.size).each do |index|
    expanded = [
      expand(string, index, index),
      expand(string, index, index + 1)
    ].max_by(&:size)

    longest = expanded if expanded.size > longest.size
  end

  longest
end

def expand(string, left, right)
  if (left >= 0 && right < string.size) && (string[left] == string[right])
    expand(string, left - 1, right + 1)
  else
    string[left + 1...right]
  end
end
