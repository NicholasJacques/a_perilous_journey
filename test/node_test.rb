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

  def test_append
    node = Node.new("Burke")
    next_node = node.append("Harrison")
    assert_kind_of Node, next_node
    assert_equal next_node, node.next_node
    tail_node = node.append("West")
    assert_equal tail_node, node.next_node.next_node
  end

  def test_includes?
    node = Node.new('Burke')
    assert node.includes?('Burke')
  end

  def test_pop
    node = Node.new('Burke')
    popped_node = node.append('Harrison')
    assert_equal popped_node, node.pop
  end

  def test_supplies
    supplies = {"pounds of food" => 200}
    node = Node.new('Burke', supplies)
    assert_equal supplies, node.supplies
  end
end