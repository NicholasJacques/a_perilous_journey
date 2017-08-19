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
    hardy = linked_list.append('Hardy')
    assert_equal head, linked_list.head
    assert_equal hardy, linked_list.head.next_node
  end

  def test_count_one_node
    linked_list = LinkedList.new
    linked_list.append('West')
    assert_equal 1, linked_list.count
  end

  def test_count_multiple_nodes
    linked_list = LinkedList.new
    linked_list.append('West')
    linked_list.append('Hardy')
    linked_list.append('Brooks')    
    assert_equal 3, linked_list.count
  end

  def test_count_with_prepend
    linked_list = LinkedList.new
    linked_list.append('West')
    linked_list.prepend('Hardy')
    assert_equal 2, linked_list.count
  end

  def test_to_string
    linked_list = LinkedList.new
    linked_list.append('West')
    assert_equal 'The West family', linked_list.to_string
    linked_list.append('Hardy')
    linked_list.append('Brooks')
    string = "The West family, followed by the Hardy family, followed by the Brooks family"
    assert_equal string, linked_list.to_string
  end

  def test_format_families
    linked_list = LinkedList.new
    surnames = ["West", "Hardy", "Brooks"]
    string = "The West family, followed by the Hardy family, followed by the Brooks family"

    assert_equal string, linked_list.send(:format_families, surnames)
  end

  def test_prepend
    linked_list = LinkedList.new
    linked_list.append('Hardy')
    linked_list.prepend('Brooks')
    string = "The Brooks family, followed by the Hardy family"
    assert_equal string, linked_list.to_string
  end

  def test_prepend_multiple
    linked_list = LinkedList.new
    linked_list.append('Hardy')
    linked_list.prepend('Brooks')
    linked_list.prepend('Small')
    string = "The Small family, followed by the Brooks family, followed by the Hardy family"
    assert_equal string, linked_list.to_string
  end

  def test_insert
    linked_list = LinkedList.new
    linked_list.append('Hardy')
    linked_list.append('Brooks')
    inserted_node = linked_list.insert(1, 'Small')
    string = 'The Hardy family, followed by the Small family, followed by the Brooks family'
    assert_kind_of Node, inserted_node
    assert_equal string, linked_list.to_string
    assert_equal 3, linked_list.count
  end
end