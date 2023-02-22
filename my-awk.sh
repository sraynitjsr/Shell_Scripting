#Print the Lines Which Match the Given Pattern

awk '/serious/ {print}' student.txt

#Split Output Into Fileds
awk '{print $1,$4}' student.txt

#Printing Lines With More Than 15 Characters
awk 'length($0) > 15' student.txt