require 'pry'
class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(surname)
    @count += 1
    if head
      @head.append(surname)
    else
      @head = Node.new(surname)
    end
  end

  def to_string
    node = head
    families = []
    while node
      families << node.surname
      node = node.next_node
    end
    format_families(families)
  end

  private

  def format_families(surnames)
    surnames.map! do |surname|
      "the #{surname} family"
    end

    surnames[0][0] = surnames[0][0].upcase
  
    surnames.join(", followed by ")
  end
end