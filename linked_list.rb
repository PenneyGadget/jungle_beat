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

  def find_tail
    current = @head
    while current.pointer != nil
      current = current.pointer
    end
    current
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

  def insert(position, data)
    count = 0
    current = @head
    new_node = Node.new(data)

    until count == position
      count += 1
      current = current.pointer
    end
    new_node.pointer = current

    count = 0
    current = @head
    until count == position - 1
      count += 1
      current = current.pointer
    end
    current.pointer = new_node
  end

  def delete

  end

  def includes?(data)
    current = @head
    until current.data == data || current.pointer == nil
      current = current.pointer
    end
    current.data == data
  end

  def pop(num = 1)
    string = ""
    num.times do
      current = @head
      until current.pointer == find_tail
        string << current.data + " "
        current = current.pointer
      end
      current.pointer = nil
    end
    string.strip
  end

  def count
    count = 1
    current = @head
    while current.pointer != nil
      current = current.pointer
      count += 1
    end
    count
  end

  def find (position, num_of_elements)
    string = ""
    count = 0
    current = @head
    until count == position
      count += 1
      current = current.pointer
    end
    num_of_elements.times do
      string << current.data + " "
      current = current.pointer
    end
    string.strip
  end

  def all
    string = ""
    current = @head
    while current.pointer != nil
      string << current.data + " "
      current = current.pointer
    end
    string + find_tail.data
  end

end
