require_relative 'test_helper'

class LinkedListTest < Minitest::Test
  def test_it_exists
    assert LinkedList.new
  end


  def test_it_is_initialized_with_a_nil_head
    linked_list = LinkedList.new
    assert_nil linked_list.head
  end

  def test_append
    linked_list = LinkedList.new
    node = linked_list.append('West')
    assert_kind_of Node, node
    assert_equal node, linked_list.head
    assert_nil linked_list.head.next_node
  end

  def test_append_more_than_one
    linked_list = LinkedList.new
    head = linked_list.append('West')
    linked_list.append('Hardy')
    assert_equal head, linked_list.head
  end

  def test_count
    linked_list = LinkedList.new
    linked_list.append('West')
    assert_equal 1, linked_list.count
  end

  def test_to_string
    linked_list = LinkedList.new
    linked_list.append('West')
    assert_equal 'The West family', linked_list.to_string
  end

end