#!/bin/bash

echo "Which operation would you like to do?"
read s
echo "Enter Operand 1"
read a
echo "Enter Operand 2"
read b

addition(){
  c=$(($a+$b))
  echo $c
}
subtraction(){
  c=$(($a-$b))
  echo $c
}
division(){
  c=$(($a/$b))
  echo $c
}
multiplication(){
  c=$(($a*$b))
  echo $c
}


if [ $s = "+" ];
then addition
elif [ $s = "-" ];
then subtraction
elif [ $s = "*" ];
then multiplication
elif [ $s = "/" ];
then division
else
  echo "error"
fi
