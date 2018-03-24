def remove_duplicates(nums)
  last_processed = nums[0]
  index = 1

  while index < nums.size do
    if nums[index] == last_processed
      nums.slice!(index)
    else
      last_processed = nums[index]
      index = index + 1
    end
  end

  nums.size
end
