require 'pry'
class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(surname)
    @count += 1
    if @head
      @head.append(surname)
    else
      @head = Node.new(surname)
    end
  end

  def prepend(surname)
    @count += 1
    if @head
      next_node = @head
      @head = Node.new(surname)
      @head.next_node = next_node
    else
      @head = Node.new(surname)
    end
  end

  def insert(insertion_point, surname)
    @count += 1
    current_node = @head
    (insertion_point - 1).times do
      current_node = current_node.next_node
    end
    new_node = Node.new(surname)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
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