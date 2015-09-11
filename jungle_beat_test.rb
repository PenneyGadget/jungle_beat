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

  def test_it_plays
    jb = JungleBeat.new("deep dee doo dah")
    assert jb.play
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

  def test_we_can_append_more_beats
    jb = JungleBeat.new("beep bop boo")
    jb.linked_list.append("doop dee dooo")
    assert "beep bop boo doop dee dooo"
    assert_equal "beep bop boo doop dee dooo", jb.linked_list.all
  end

  def test_we_can_prepend_beats
    jb = JungleBeat.new("ding dong dee")
    jb.linked_list.prepend_list("oingo boingo")
    assert "oingo boingo ding dong dee"
    # assert_equal "oingo boingo ding dong dee", jb.linked_list.all
  end

  def test_we_can_see_if_the_beats_list_includes_a_certain_beat
    jb = JungleBeat.new("I so tired of this")
    jb.linked_list.includes?("tired")
    assert "tired"
  end

  def test_we_can_pop_items_off_the_end
    jb = JungleBeat.new("bla bla blue blabbity blab")
    jb.linked_list.pop(2)
    assert_equal "bla bla blue", jb.linked_list.all
  end

  def test_we_can_count_the_number_of_the_beats
    jb = JungleBeat.new("dum ditty do dah dee")
    assert_equal 5, jb.linked_list.count
  end

  def test_we_can_insert_beats_in_the_middle
    jb = JungleBeat.new("dum dum dee dee")
    jb.linked_list.insert(2, "boo boo")
    assert_equal "dum dum boo boo dee dee", jb.linked_list.all
  end

  def test_we_can_find_any_number_of_beats_at_a_random_place_in_the_list
    jb = JungleBeat.new("pee pee poo poo potty time")
    jb.linked_list.find(1, 3)
    assert "pee poo poo"
  end

end
