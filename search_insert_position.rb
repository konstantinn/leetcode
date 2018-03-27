def search_insert(nums, target)
  return 0 if nums[0] > target
  return nums.size if nums.last < target

  (0...nums.size).each do |index|
    num = nums[index]
    next if num < target
    return index
  end
end
