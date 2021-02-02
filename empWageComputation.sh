echo "Welcome to Employee Wage Computation"


#Check Employee is Present or Absent

echo "Employee Wage Computation"
attend=$(( $RANDOM%2 ))
if (( $attend==0 ))
then
	echo "Employee is Absent"
else
	echo "Employee  is Present"
fi

