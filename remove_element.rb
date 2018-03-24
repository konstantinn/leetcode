def remove_element(nums, val)
  index = 0

  while index < nums.size do
    if nums[index] == val
      nums.slice!(index)
    else
      index = index + 1
    end
  end

  nums.size
end
