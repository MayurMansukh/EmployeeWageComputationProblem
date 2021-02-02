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


#Calculate Daily Employee Wage

isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then 
         empRatePerHr=20;
         empHrs=8;
         salary=$(( $empHrs*$empRatePerHr )) 
   else
      salary=0;
fi
echo "Daily Wage of an Employee= " $salary



#Add Part time Employee & Wage


echo "Welcome to Employee Wage Computation"

Employee present or not

isPresent=1;
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then 
         empRatePerHr=20;
         empHrs=8;
         salary=$(( $empHrs*$empRatePerHr )) 
   else
      salary=0;
fi
echo "Daily Wage of an Employee= " $salary
