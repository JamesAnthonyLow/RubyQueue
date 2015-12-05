##RubyQueue

Current Goal:

Benchmark efficiency of RubyQueue implemented using LinkedList vs Array.


INITIALIZE
[0;32;49mQueue:[0m 2.379e-06 ms
[0;31;49mArray:[0m 1.344e-06 ms

====================
====================

#enqueue vs #push
[0;32;49mQueue:[0m 3.271e-06 ms
[0;31;49mArray:[0m 8.5e-07 ms

====================
====================

30 times #enqueue vs #push
[0;32;49mQueue:[0m 2.4555e-05 ms
[0;31;49mArray:[0m 5.392e-06 ms

====================
====================

100 times #enqueue vs #push
[0;32;49mQueue:[0m 5.272e-05 ms
[0;31;49mArray:[0m 1.5711e-05 ms

====================
====================

#dequeue vs #unshift
[0;32;49mQueue:[0m 2.179e-06 ms
[0;31;49mArray:[0m 6.5e-07 ms

====================
====================

30 times #dequeue vs #unshift
[0;32;49mQueue:[0m 9.242e-06 ms
[0;31;49mArray:[0m 2.444e-06 ms

====================
====================

100 times #dequeue vs #unshift
[0;32;49mQueue:[0m 2.6479e-05 ms
[0;31;49mArray:[0m 5.967e-06 ms

====================
====================
