def longest_common_prefix(strs)
  return '' if strs.empty?

  longest = ''
  sorted = strs.sort_by(&:size)
  smallest = sorted.shift

  (0...smallest.size).each do |index|
    if sorted.all? { |word| word[0..index] == smallest[0..index] }
      longest = smallest[0..index]
    end
  end

  longest
end
