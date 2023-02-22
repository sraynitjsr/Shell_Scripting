#Print the Lines Which Match the Given Pattern

awk '/serious/ {print}' student.txt

#Split Output Into Fileds
awk '{print $1,$4}' student.txt

#Printing Lines With More Than 15 Characters
awk 'length($0) > 15' student.txt

#To Print the Squares of First Numbers From 1 to N
awk 'BEGIN { for(i=1;i<=10;i++) print "Square of", i, "is => ",i*i; }'