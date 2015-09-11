gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'jungle_beat'
require_relative 'linked_list'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_jungle_beats_exists
    assert JungleBeat
  end

  def test_it_initializes_with_new_beats
    assert JungleBeat.new("deep dep dep deep")
  end

  def test_that_it_now_has_a_linked_list
    jb = JungleBeat.new("beep")
    assert jb.linked_list
  end

  def test_makes_the_first_word_the_head_node
    jb = JungleBeat.new("beep beep")
    assert_equal "beep", jb.linked_list.head.data
  end

  def test_count_the_number_of_beats_in_the_list
    jb = JungleBeat.new("beep bop boo")
    assert_equal 3, jb.linked_list.count
  end

end
