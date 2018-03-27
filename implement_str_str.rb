def str_str(haystack, needle)
  return 0 if needle.empty?

  (0...haystack.size).each do |index|
    next unless haystack[index] == needle[0]
    return index if haystack[index, needle.size] == needle
  end
  -1
end
