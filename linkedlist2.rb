class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

# Check if linkedlist is infinite
def is_infinite(list)
  node = list
  while (list.next_node)
    list = list.next_node
    if list == node
      return true
    end
  end
  return false
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(83, node4)
node6 = LinkedListNode.new(67, node5)
node7 = LinkedListNode.new(02, node6)

#print_values(node7)
#puts "-------"
#revlist = reverse_list(node7)
#print_values(revlist)

node1.next_node = node7
puts is_infinite(node7)
puts "-------"
node1.next_node = nil
puts is_infinite(node7)