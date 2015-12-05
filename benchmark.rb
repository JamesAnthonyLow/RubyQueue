require 'colorize'
require_relative 'queue'

class Benchmark
  def initialize teststr
    @teststr = teststr
  end
  def timer
    time = t { yield } 
    "#{@teststr} #{time}"
  end
  private
  def t
    b = Time.now
    yield
    a = Time.now
    "#{a - b} ms"
  end
end

queue = Benchmark.new "Queue:".green
array = Benchmark.new "Array:".red
puts "INITIALIZE"
puts queue.timer { Queue.new }
puts
puts array.timer { Array.new }
puts
puts "===================="
puts "===================="
puts
puts "#enqueue vs #push"
q = Queue.new
a = Array.new
puts queue.timer { q.enqueue "j" }
puts array.timer { a.push "j" }
puts
puts "===================="
puts "===================="
puts

