require 'set'

def three_sum(nums)
  (0...nums.size).each_with_object(Set.new) do |i, results|
    num = nums[i]
    next if i > 0 && num == nums[i - 1]

    (i + 1...nums.size).each_with_object(Set.new) do |j, set|
      target = -num - nums[j]
      if set.include?(target)
        results << [num, nums[j], target].sort!
      else
        set << nums[j]
      end
    end
  end.to_a
end
