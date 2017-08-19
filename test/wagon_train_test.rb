require_relative 'test_helper'

class WagonTrainTest < Minitest::Test
  def test_it_exists
    assert WagonTrain.new
  end

  def test_list
    wt = WagonTrain.new
    assert_kind_of LinkedList, wt.list
    assert_nil wt.list.head
  end

  def test_append
    wt = WagonTrain.new
    new_node = wt.append('Burke')
    assert_kind_of Node, new_node
    assert_equal new_node, new_node
  end

  def test_count
    wt = WagonTrain.new
    wt.append('Burke')
    wt.append('Small')
    wt.append('Harvey')
    assert_equal 3, wt.count
  end
end