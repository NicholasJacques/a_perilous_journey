class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head
      @head.next_node = Node.new(surname)
    else
      @head = Node.new(surname)
    end
  end

  def count
    1
  end

  def to_string
    "The #{head.surname} family"
  end
end