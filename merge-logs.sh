#!/bin/bash

echo "Το πρώτο αρχείο είναι το $1"
echo "Το δεύτερο αρχείο είναι το $2"
file1=$1
file2=$2

echo -n "" > merge-log.txt   #Καθαρισμός των περιεχομένων του αρχείου

#Έλεγχος επιτυχούς επιλογής αρχείων
if [ $# -eq 0 ]  
then 
	echo "$0: Δεν έχετε επιλέξει αρχείο"
exit 1
elif [ $# -eq 1 ]
then
	echo "$0: Θα πρέπει να επιλέξετε δύο αρχεία"
exit 1
#Εκτύπωση των δύο αρχείων στο νέο
else
	echo "Αρχή πρώτου αρχείου" > merge-log.txt
	cat $file1 >> merge-log.txt
	echo -e "Τέλος πρώτου αρχείου\n" >> merge-log.txt
	echo "Αρχή δεύτερου αρχείου" >> merge-log.txt
	cat $file2 >> merge-log.txt
	echo "Τέλος δεύτερου αρχείου" >> merge-log.txt
fi
