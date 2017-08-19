require_relative 'test_helper'

class NodeTest < Minitest::Test
  def test_it_is_initialized_with_a_surname
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_it_has_a_next_pointer
    node = Node.new("Burke")
    assert_nil node.next_node
  end
end