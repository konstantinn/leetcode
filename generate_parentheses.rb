OPENED = '('.freeze
CLOSED = ')'.freeze

def generate_parenthesis(n)
  [].tap do |results|
    add_parenthesis(n, n, results)
  end
end

def add_parenthesis(opened, closed, results, parenthesis = '')
  return results << parenthesis if opened.zero? && closed.zero?

  add_parenthesis(opened - 1, closed, results, parenthesis + OPENED) if opened.positive?
  add_parenthesis(opened, closed - 1, results, parenthesis + CLOSED) if opened < closed
end
