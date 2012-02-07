#1,1,2,3,5,8,13,21,34

fib := method(num,
  if (num <= 2,1, fib(num-1) + fib(num-2))
)

place := 9
writeln( "fib(", place, ") is: ", fib(place))


"\n------------------\n" println

#From http://stackoverflow.com/questions/4262196/how-do-you-replace-existing-operators-without-invoking-them-in-io
origDiv := Number getSlot("/")

10 origDiv(5) println   # => 2
10 origDiv(0) println   # => inf

Number / := method (i, 
    if (i != 0, self origDiv(i), 0)
)

(10 / 5) println
(10 / 0) println

"\n------------------\n" println

list(list(1,1,1),list(2,2,2)) flatten sum println

"\n------------------\n" println

myAverage := method( myList,
  myList average
)

myAverage(list(1,2,3,4)) println
myAverage(list(1,2,3,"four")) println

"\n------------------\n" println

