def convert(string, num_rows)
  return string if num_rows < 2

  matrix = build_matrix(string, num_rows)
  matrix.reduce('') do |memo, (_key, value)|
    memo << value
  end
end

def build_matrix(string, num_rows)
  index = 0
  matrix = {}
  last_row = num_rows - 1

  while index < string.size do
    0.upto(last_row).each do |row|
      matrix[row] = [matrix[row], string[index]].join
      index = index + 1
    end

    (last_row - 1).downto(1).each do |row|
      matrix[row] = [matrix[row], string[index]].join
      index = index + 1
    end
  end

  matrix
end
