Sequence = Hash.new do |hash, key|
  if key == 1
    hash[key] = '1'
  else
    prev = hash[key - 1]
    start_from = 1
    count = 1
    result = ''

    current_term = prev[0]

    while start_from <= prev.size do
      if current_term == prev[start_from]
        count = count + 1
      else
        result << [count, current_term].join
        count = 1
        current_term = prev[start_from]
      end

      start_from = start_from + 1
    end

    hash[key] = result
  end
end

def count_and_say(n)
  Sequence[n]
end
