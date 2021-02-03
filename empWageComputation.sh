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



#Calculating Wages for a Month


IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours(){
     case $1 in
         $IS_FULL_TIME)
          workHours=8
                   ;;
        $IS_PART_TIME)
             workHours=4
                   ;;
      *)
  workHours=0
      ;;
esac
echo $workHours
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]] 
do
  (( totalWorkingDays++ ))
        workHours=$( getWorkingHours $((RANDOM%3)) )
        totalWorkHours=$(($totalWorkHours+$workHours))

 done

totalSalary=$(($totalWorkHours*$EMP_RATE_PER_HR));

echo "salary of an Employee= "$totalSalary



#Refactor the Code to write a function to get work hours



IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours(){
     case $1 in
         $IS_FULL_TIME)
          workHours=8
                   ;;
        $IS_PART_TIME)
             workHours=4
                   ;;
      *)
  workHours=0
      ;;
esac
echo $workHours
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]] 
do
  (( totalWorkingDays++ ))
        workHours=$( getWorkingHours $((RANDOM%3)) )
        totalWorkHours=$(($totalWorkHours+$workHours))

 done

echo $totalWorkHours



#Store the Daily Wage along with the Total Wage



IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours(){
     case $1 in
         $IS_FULL_TIME)
          workHours=8
                   ;;
        $IS_PART_TIME)
             workHours=4
                   ;;
      *)
  workHours=0
      ;;
esac
echo $workHours
}

function calcDailyWage(){
          local workHrs=$1
           wage=$(($workHrs+$EMP_RATE_PER_HR))
           echo $wage
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
  (( totalWorkingDays++ ))
        workHours=$( getWorkingHours $((RANDOM%3)) )
        totalWorkHours=$(($totalWorkHours+$workHours))
         empDailyWage[$totalWorkingDays]=$( calcDailyWage $workHours )

 done
totalwages=$(($totalWorkHours*$EMP_RATE_PER_HR));
totalSalary=$( calcDailyWage $totalWorkHours )
echo "total wage  $totalwages"
echo "Daily Wage " ${empDailyWage[@]}
echo "All Keys " ${!empDailyWage[@]}





#Store the Day and the Daily Wage along with the Total Wage



IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours(){
     case $1 in
         $IS_FULL_TIME)
          workHours=8
                   ;;
        $IS_PART_TIME)
             workHours=4
                   ;;
      *)
  workHours=0
      ;;
esac
echo $workHours
}

function calcDailyWage(){
          local workHrs=$1
           wage=$(($workHrs+$EMP_RATE_PER_HR))
           echo $wage
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
  (( totalWorkingDays++ ))
        workHours=$( getWorkingHours $((RANDOM%3)) )
        totalWorkHours=$(($totalWorkHours+$workHours))
         empDailyWage[$totalWorkingDays]=$( calcDailyWage $workHours )

 done
totalwages=$(($totalWorkHours*$EMP_RATE_PER_HR));
totalSalary=$( calcDailyWage $totalWorkHours )
echo "days $totalWorkingDays"
echo "total wage  $totalwages"
echo "Daily Wage " ${empDailyWage[@]}
echo "All Keys " ${!empDailyWage[@]}
