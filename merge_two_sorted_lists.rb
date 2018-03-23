class ListNode
  attr_accessor :val, :next
  def initialize(val, next_node = nil)
      @val = val
      @next = next_node
  end
end

def merge_two_lists(l1, l2)
  values = (node_values(l1) + node_values(l2)).sort

  root_node = ListNode.new(values.shift)
  reduce(values, root_node, root_node)
end

def node_values(node, values = [])
  return values if node.nil?
  values.push(node.val)
  node_values(node.next, values)
end

def reduce(values, result, next_node)
  return result if values.empty?

  next_node.next = ListNode.new(values.shift)
  reduce(values, result, next_node.next)
end
