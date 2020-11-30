#! /bin/bash
# cars.sh
# Ariel Gutierrez

while true
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read -r "INPUT"
	case $INPUT in
	1)
		echo "What is the year of the car?"
		read -r "YEAR"
		echo "What is the make of the car?"
		read -r "MAKE"
		echo "What is the model of the car?"
		read -r "MODEL"
		echo "$YEAR:$MAKE:$MODEL" >> "My_old_cars"
		;;
	2)
		#Display list of cars
		sort "My_old_cars"
		;;
	3)
		break
		;;
	*)
		echo "Invalid input. Please try again."
		;;
	esac 

done
echo "Goodbye"
