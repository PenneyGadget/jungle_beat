require_relative 'node'

class LinkedList

  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
  end

  def append_node(data)
    current = @head
    while current.pointer != nil
      current = current.pointer
    end
    current.pointer = Node.new(data)
  end
  #
   # def header_node(node) #prepend
  #   if @head.nil?
  #     @head = node
  #     @tail = node
  #   else
  #     node.pointer = @head
  #     @head = node
  #   end
  # end

end

# node1 = Node.new("beep")
# node1.data
# node1.pointer
#
# node2 = Node.new("bop", node1)
# node2.data
# node2.pointer
#
# node3 = Node.new("bam", node2)
# node3.data
# node3.pointer
#
# list = LinkedList.new(node3)
# list.append_one_node("groovy")



#think of it like this: node = (data, (data, (data, (data, ))))
