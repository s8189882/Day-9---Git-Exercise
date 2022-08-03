
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

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$(($((RANDOM%2))+1));

case $empCheck in
	$isFullTime)
		h=8
		;;
	$isPartTime)
		h=8
		;;
	*)
		h=0
		;;
esac


echo ""