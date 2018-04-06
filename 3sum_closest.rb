def three_sum_closest(nums, target)
  nums = nums.sort
  closest = nil

  (0...nums.size).each do |i|
    j = i + 1
    k = nums.size - 1

    until j >= k do
      sum = nums[i] + nums[j] + nums[k]
      closest ||= sum
      closest = sum if (target - sum).abs < (target - closest).abs

      if sum < target
        j = j + 1
      elsif sum > target
        k = k - 1
      else
        break
      end
    end

  end

  closest
end
