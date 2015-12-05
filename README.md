##RubyQueue

Current Goal:

Benchmark efficiency of RubyQueue implemented using LinkedList vs Array.


#INITIALIZE
Queue: 2.933e-06 ms
Array: 1.726e-06 ms

====================
====================

#enqueue vs push
Queue: 4.685e-06 ms
Array: 1.795e-06 ms

====================
====================

#30 times enqueue vs push
Queue: 1.7697e-05 ms
Array: 5.37e-06 ms

====================
====================

#100 times enqueue vs push
Queue: 5.3181e-05 ms
Array: 4.4964e-05 ms

====================
====================

#dequeue vs unshift
Queue: 1.9469e-05 ms
Array: 1.054e-06 ms

====================
====================

#30 times dequeue vs unshift
Queue: 9.71e-06 ms
Array: 2.844e-06 ms

====================
====================

#100 times dequeue vs unshift
Queue: 2.6731e-05 ms
Array: 5.995e-06 ms

====================
====================
