
#
#Start with Displaying Welcome to Employee Wage Computation Program on Master #Branch
#
#


echo ""
echo "Welcome to Employee Wage Computation Program "

attendance=$(($((RANDOM%2))+1))
h=8

if [[ $attendance -eq 1 ]]; then
	echo "Employee is present."
else
	echo "Employee is absent."
fi


wage=$((h*20))  #daily wage = 20 times number of hours #Full day=8hours



#part time hour is 8
# wages per hour is 20
wages=$(( 20*8))

echo "Part time wages :$wages"


echo ""