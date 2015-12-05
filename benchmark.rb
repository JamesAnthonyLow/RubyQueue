require 'colorize'
require_relative 'queue'

class Benchmark
  def initialize first, second
    @firststr = first
    @secondstr = second
  end
  def test testname, first, second 
    puts
    puts testname
    puts timer @firststr, first
    puts timer @secondstr, second
    puts
    puts "===================="
    puts "===================="
  end
  def timer str, bloc
    time = t { bloc.call } 
    "#{str} #{time}"
  end
  private
  def t
    b = Time.now
    yield
    a = Time.now
    "#{a - b} ms"
  end
end

bench = Benchmark.new "Queue:", "Array:"
q = Queue.new
a = Array.new
bench.test "INITIALIZE", ->{ Queue.new }, ->{ Array.new }
bench.test "#enqueue vs #push", ->{ q.enqueue "j" }, ->{ a.push "j" }
bench.test "30 times #enqueue vs #push", ->{ 30.times { q.enqueue "j" }}, ->{ 30.times { a.push "j" }}
bench.test "100 times #enqueue vs #push", ->{ 100.times { q.enqueue "j" }}, ->{ 100.times { a.push "j" }}
bench.test "#dequeue vs #unshift", ->{ q.dequeue }, ->{ a.unshift }
bench.test "30 times #dequeue vs #unshift", ->{ 30.times { q.dequeue }}, ->{ 30.times { a.unshift }}
bench.test "100 times #dequeue vs #unshift", ->{ 100.times { q.dequeue }}, ->{ 100.times { a.unshift }}
