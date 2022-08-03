
#
#Start with Displaying Welcome to Employee Wage Computation Program on Master #Branch
#
#


echo ""
echo "Welcome to Employee Wage Computation Program "



attendance=$(($((RANDOM%2))+1))

if [[ $attendance -eq 1 ]]; then
	echo "Employee is present."
else
	echo "Employee is absent."
fi
echo ""