#!/bin/bash -x


echo ""

#Start with Displaying Welcome to Employee Wage Computation Program on Master Branch
echo "Welcome to Employee Wage Computation Program "


#Check Employee is Present or Absent
attendance=$(($((RANDOM%2))+1))
h=8

if [[ $attendance -eq 1 ]]; then
	echo "Employee is present."
else
	echo "Employee is absent."
fi

#Calculate daily wage = 20 times number of hours #Full day=8hours
dailyWage=$((h*20))  


#Solving using Switch Case Statement

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$(($((RANDOM%2))+1));

case $empCheck in
	$isFullTime)
		h=8
		echo "Employee is a Full time employee"
		;;
	$isPartTime)
		h=8
		echo "Employee is a Part time employee"
		;;
esac

#Calculating Wages for a Month
#Assume 20 Working Day per Month

dailyWage=$((h*20))
monthlyWage=$((dailyWage*20))

echo "Daily wage : $ $dailyWage"
echo "Monthly wage : $ $monthlyWage"


echo ""