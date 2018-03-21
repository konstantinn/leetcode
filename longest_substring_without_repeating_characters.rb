def length_of_longest_substring(string)
  return 0 if string.empty?

  start, result = [0, 0]

  string.chars.each_with_index.with_object({}) do |(char, index), map|
    prev_occured_at = map[char]
    map[char] = index
    start = [start, prev_occured_at + 1].max if prev_occured_at
    result = [result, index - start + 1].max
  end

  result
end
