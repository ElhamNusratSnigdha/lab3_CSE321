#!/bin/bash

#Prompt the user for a valid BRACU ID
echo "Enter a valid ID"
read ID

#converting integer to string
id=$( printf $ID )
c=${#id}

#The first 2 digits indicate the enrolment year
enrolment_year="20"${id:0:2}


#The next digit indicates the semester of enrolment using the following conventions:1 = Spring,2 = Fall,3 = Summer
semester=${id:2:1}
semester_enrol(){
  if [ $semester -eq 1 ];
    then semester="Spring"
  elif [ $semester -eq 2 ];
    then semester="Fall"
  elif [ $semester -eq 3 ];
    then semester="Summer"
  else
    echo "Invalid"
  fi
}
semester_enrol

#The next 2 digits represent the dept. the following conventions: 01 = from the Dept. of CSE, Others = not from the Dept. of CSE
department=${id:3:2}

#The next 3 digits are his/her Unique Serial Number.
usn=${id:5:3}


validity(){
  if [ $c -eq 8 ];
    then 
    if [ $department -eq "01" ];
    then department="is from the Dept. of CSE"
    echo "The student "$department" enrolled in "$semester" "$enrolment_year
    else
    department="is not from the Dept. of CSE"
    echo "The student "$department
    fi
  else
    echo "Invalid BRACU ID"
  fi
}
validity $c

