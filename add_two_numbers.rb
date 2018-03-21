class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def add_two_numbers(l1, l2)
  number = node_to_number(l1) + node_to_number(l2)
  nodes = number.to_s.reverse.chars.map { |char| ListNode.new(char.to_i) }

  (0...nodes.size).each do |index|
    nodes[index].next = nodes[index + 1]
  end

  nodes.first
end

def node_to_number(node, str = node.val.to_s)
  next_node = node.next
  return str.reverse.to_i if next_node.nil?
  node_to_number(next_node, str + next_node.val.to_s)
end
