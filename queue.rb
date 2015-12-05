class Queue
  Node = Struct.new(:data, :next)
  def enqueue data
    new_node = Node.new data
    empty? ? (@head = new_node) : (@tail.next = new_node)
    @tail = new_node
  end
  def peek
    @head.data
  end
  def dequeue
    return nil if empty?
    data = peek
    @head = @head.next
    data
  end
  def empty?
    !@head
  end
end

q = Queue.new
puts q.empty?
q.enqueue "j"
puts q.empty?
puts q.peek
q.enqueue "a"
puts q.empty?
puts q.peek
q.enqueue "m"
puts q.empty?
puts q.peek
q.enqueue "e"
puts q.empty?
puts q.peek
q.enqueue "s"

print q.dequeue
print q.dequeue
print q.dequeue
print q.dequeue
print q.dequeue
puts
p q.dequeue

puts q.empty?
