def two_sum(nums, target)
  nums.each_with_index.with_object({}) do |(num, index), hash|
    if prev_index = hash[target - num]
      return [prev_index, index]
    else
      hash[num] = index
    end
  end
  []
end
