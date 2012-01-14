"1 + 1 = " print
(1 + 1) print
"\n" print

one := 1
"When one == 1, 1 + one = " print
(1 + one) print
"\n" print

# one := "one"
# "1 + one = " print
# (1 + one) print
# "\n" print

"\n" print
"---------------------------\n" print
"\n" print


0 and "0 is true\n" print
"" and "empty string is true\n" print
nil and "nil is true\n" print or "nil is not true\n" print

"\n" print
"---------------------------\n" print
"\n" print

Child := Object clone
"Child's prototype's slots are: " print
Child proto slotNames print

"= assigns a value to an already defined slot"
":= defines and assigns a slot"
"::= defines and assigns a slot "

"\n" print
"-----------------------\n" print print
"\n" print

myMethod := method( "called myMethod\n" print)

"lets call myMethod\n" print
myMethod()