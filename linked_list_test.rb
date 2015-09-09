gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linked_list'
require_relative 'node'

class LinkedListTest < Minitest::Test

  def test_is_there_a_node?
    assert Node.new(@data)
  end

  def test_does_it_create_a_node
    skip
  end

  def test_does_the_first_node_become_the_header
  skip
  end

  def test_data_is_added_to_node
  skip
  end

  def test_does_the_first_node_point_to_nil
  skip
  end

  def test_create_a_second_node
  skip
  end

  def test_does_the_header_node_now_point_to_the_second_node
  skip
  end

  def test_is_the_second_node_now_the_tail
  skip
  end

  def test_does_the_second_node_now_point_to_nil
  skip
  end

  def test_create_a_third_node
  skip
  end

  def test_does_the_third_node_point_to_nil
  skip
  end

  def test_does_the_third_node_become_the_tail
  skip
  end

  def test_does_the_second_node_now_point_to_the_third_node
  skip
  end

  def test_insert_a_new_header_node
  skip
  end

  def test_insert_a_node_in_the_middle_of_the_list
  skip
  end

  def test_remove_the_header_node
  skip
  end

  def test_remove_the_tail_node
  skip
  end

  def test_remove_a_node_from_the_middle_of_the_list
  skip
  end

  def test_ask_if_the_list_contains_something
  skip
  end

  def test_ask_what_position_a_certain_element_is_in
  skip
  end

  def test_does_the_list_append_one_thing
    list = LinkedList.new("beep")

    list.append_node("bop")

    assert_equal "bop", list.head.pointer.data
  end

  def test_it_can_append_two_things
    list = LinkedList.new("beep")

    list.append_node("bop")
    list.append_node("thing")

    assert_equal "bop", list.head.pointer.data
    assert_equal "thing", list.head.pointer.pointer.data
  end


  def test_does_the_list_prepend
    skip
  end

end
