class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data
  def initialize
    @data = nil
    #@data will be empty.Set it default to 'nil'
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
    #Set the instance variable '@data' equal to a new instance of the 'LinkedListNode'
    #class with the given arguments being a forwarded argument from the push method 'value'
    #and recurring the instance variable '@data'
  end

  def pop
    print "nil\n" if @data.nil?
    #print 'nil' if the instance variable '@data' is equal to 'nil'
    print "#{@data.value}\n"
    #print 'data.value' otherwise
    @data = @data.next_node
  end
  # end of 'pop'method
end
#end of class Stack

def reverse_list(list)
  stack= Stack.new

  while list
    stack.push(list.value)
    list=list.next_node
  end
  return stack.data

end



 def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      # Within the method itself, it calls itself. 
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "------------------"

revlist = reverse_list(node3)

print_values(revlist)

#Results 
#12 --> 99 --> 37 --> nil
#-------
#37 --> 99 --> 12 --> nil
