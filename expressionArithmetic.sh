a=30
b=15

# expr is used for evaluating expression
# to evaluate expression we need to use reverse quote
echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b` # asterics refers to all the files in a directory 
  # to make that multiplication symbo add backslash 
echo `expr $a / $b`
echo `expr $a % $b`


