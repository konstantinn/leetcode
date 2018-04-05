def two_sum(nums, target)
  (0...nums.size).each_with_object({}) do |index, hash|
    number = nums[index]
    hash_key = target - number
    if hash.key?(hash_key)
      return [hash[hash_key], index]
    else
      hash[nums[index]] = index
    end
  end
end
