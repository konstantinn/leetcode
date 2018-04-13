require 'set'

def four_sum(nums, target)
  (0...nums.size).each_with_object(Set.new) do |i, results|
    (i + 1...nums.size).each do |j|
      pair = [nums[i], nums[j]]
      nums_except_pair = nums[0...i] + nums[j + 1...nums.size]
      two_sum_result = two_sum(pair, nums_except_pair, target - pair.sum)
      results.merge(two_sum_result)
    end
  end.to_a
end

def two_sum(first_pair, nums, target)
  results = []
  nums.each_with_object(Set.new) do |number, set|
    remaining_number = target - number
    if set.include?(remaining_number)
      results << (first_pair + [number, remaining_number]).sort!
    else
      set << number
    end
  end
  results
end
