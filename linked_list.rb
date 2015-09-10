require_relative 'node'
require 'pry'
class LinkedList

  attr_accessor :head, :data, :pointer

  def initialize(data)
    @head = Node.new(data)
  end

  def empty?
    @head == nil
  end

  def append(data)
    current = @head
    while current.pointer != nil
      current = current.pointer
    end
    current.pointer = Node.new(data)
  end

  def prepend_list(data)
    node = Node.new(data)
    @head = node
    node.pointer = @head
  end

  def insert

  end

  def delete

  end

  def includes?

  end

  def pop
    current = @head
    current
    placeholder = @head
    current.pointer
    while current.pointer != nil
      placeholder = current
      current = current.pointer
    end
    placeholder.pointer = nil
  end

  # def count
  #   count = 0
  #   current = @head
  #   while current.pointer != nil
  #     count += 1
  #     current = current.pointer
  #   end
  #   count
  # end

  def find #find one or more elements based on arbitrary positions in the list - first param = first position to return, second param = how many elements to return

  end

  def all #return all element in the list in order

  end

end

# list = LinkedList.new("bam")
# list.head.data
# list.head.pointer
#
# list.append("boing")
# list.head.pointer
#
# list
#
# list.prepend_list("boom")
# list.head
#
# list
#
# list.pop
