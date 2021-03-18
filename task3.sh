#!/bin/bash

echo "Enter an Integer"
read int

calculation(){
  calc=0
  i=0
  while [ $i -lt ${#int} ];
  do 
    c=${int:$i:1}
    calc=$(($calc+($c*$c)))
    i=$(($i+1))
  done
  return $(($calc))
}

end=$((SECONDS+3))
until [ $int = 1 ]
do
  calculation
  int=$?
  if [ $SECONDS -eq $end ];
  then break
  fi
done
if [ $int -eq 1 ];
then echo "Happy Prime"
else
  echo "Not Happy Prime"
fi