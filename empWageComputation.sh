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



#Solving using Switch Case Statement


isPartTime=1
isFullTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
          $isFullTime)
                    empHrs=8
                        ;;
                  $isPartTime)
                        empHrs=4
                            ;;
               *)
               empHrs=0
                   ;;
esac

  salary=$(($empHrs*$empRatePerHr)) 

echo "Salary Of Employee= "$salary  




#Calculate Wages till a condition of total working hours or days is reached for a month


empHrs=100;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for(( day=1; day<=$numWorkingDays; day++ ))
do
        salary=$(( $empHrs*$empRatePerHr ))
        totalSalary=$(( $totalSalary+$salary ))
done
echo  "Salary of an Employee" $totalSalary




