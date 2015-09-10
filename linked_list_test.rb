gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'
require_relative 'linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_is_the_list_empty?
    node = Node.new(1)
    refute nil, node.methods.empty?
  end

  def test_is_there_a_node
    assert Node.new(@data)
  end

  def test_does_it_have_both_data_and_a_pointer
    node = Node.new(2)
    assert node.methods.include? :data
    assert node.methods.include? :pointer
  end

  def test_does_the_first_node_point_to_nil
    list = LinkedList.new("boom")
    assert_nil list.head.pointer
  end

  def test_does_the_list_append_one_thing
    list = LinkedList.new("beep")

    list.append("bop")

    assert_equal "bop", list.head.pointer.data
  end

  def test_it_can_append_two_things
    list = LinkedList.new("beep")

    list.append("bop")
    list.append("thing")

    assert_equal "bop", list.head.pointer.data
    assert_equal "thing", list.head.pointer.pointer.data
  end

  def test_tail_in_a_list_of_three_points_to_nil
    list = LinkedList.new("beep")

    list.append("bop")
    list.append("thing")

    assert_nil list.head.pointer.pointer.pointer
  end

  def test_does_the_list_prepend
    list = LinkedList.new("boom")

    list.prepend_list("diggity")

    assert_equal "diggity", list.head.data
  end

  def test_does_the_list_prepend_two_things
    list = LinkedList.new("boom")

    list.prepend_list("diggity")
    assert_equal "diggity", list.head.data

    list.prepend_list("dam")
    assert_equal "dam", list.head.data
  end

  def test_does_the_header_node_now_point_to_the_second_node
    list = LinkedList.new("header_node")
    node2 = list.append("second_node")

    assert_equal list.head.pointer, node2
  end

  def test_does_the_second_node_now_point_to_nil
    list = LinkedList.new("header_node")
    list.append("second_node")

    assert_nil list.head.pointer.pointer
  end

  def test_does_the_second_node_now_point_to_the_third_node
    list = LinkedList.new("beep")

    node2 = list.append("bop")
    node3 = list.append("thing")

    assert_equal list.head.pointer.pointer, node3
  end

  def test_pop_the_last_item_off_the_list
    list = LinkedList.new("beep")

    node2 = list.append("bop")
    node3 = list.append("thing")
    removed = list.pop

    assert_nil node2.pointer
  end

  def test_insert_a_node_in_the_middle_of_the_list
    skip
  end

  def test_remove_the_header_node
    skip
  end

  def test_remove_a_node_from_the_middle_of_the_list
    skip
  end

  def test_ask_if_the_list_includes_something
    skip
  end

end
