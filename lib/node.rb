class Node
  attr_reader :surname
  attr_accessor :next_node

  def initialize(surname, next_node = nil)
    @surname = surname
    @next_node = next_node
  end

  def append(surname)
    if next_node
      @next_node.append(surname)
    else
      @next_node = Node.new(surname)
    end
  end
end