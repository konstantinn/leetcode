def max_area(heights)
  return if heights.size < 2
  max_area = -1
  left = 0
  right = heights.length - 1

  while right - left > 0 do
    new_max = [heights[right], heights[left]].min * (right - left)
    max_area = [max_area, new_max].max

    if heights[right] > heights[left]
      left += 1
    else
      right -= 1
    end
  end

  max_area
end
