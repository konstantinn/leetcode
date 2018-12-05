# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

def remove_nth_from_end(head, n)
  nodes = traverse(head).each_with_index.with_object({}) do |(node, index), hash|
    hash[index] = node
  end

  node_to_remove = nodes.size - n
  if node_to_remove.zero?
    head.next
  else
    nodes[node_to_remove - 1].next = nodes[node_to_remove].next
    head
  end
end

def traverse(head)
  Enumerator.new do |enum|
    current_node = head
    loop do
      enum << current_node
      next_node = current_node.next
      break if next_node.nil?
      current_node = next_node
    end
  end
end
