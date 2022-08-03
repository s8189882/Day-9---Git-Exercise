#!/bin/bash -x


echo ""

#Start with Displaying Welcome to Employee Wage Computation Program on Master Branch
echo "Welcome to Employee Wage Computation Program "
echo ""


#Calculate Wages till a condition of total working hours or days is reached for a month
#Assume 100 hours and 20 days

perHourSalary=20;
workingHour=0;
totalSalary=0;
totalWorkingHour=0;
day=1

while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do
	((day++));
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
		echo "Employee is absent";
		workingHour=0;
		;;

		1)
		echo "Employee is working full time";
		workingHour=8;
		;;

		2)
		echo "Employee is working part time";
		workingHour=8;
		;;
	esac
	totalWorkingHour=$(($totalWorkingHour + $workingHour));
	if [ $totalWorkingHour -gt 100 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $workingHour));
		break;
	fi
	salary=$(($perHourSalary * $workingHour));
	totalSalary=$(($totalSalary + $salary));
done


echo "Days worked : $day"
echo "Total working hours : $totalWorkingHour"
echo "Salary for the month : $totalSalary"


echo ""