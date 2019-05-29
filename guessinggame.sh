echo "Welcome to the guessing game!"
#to get the number of files : ls -l | egrep -c "^-"
let flag=0
while [[ $flag == 0 ]]
do
  echo "Enter your guess of the number of files present in the current directory :"
  read guess
  if [[ $guess -eq 3 ]]
  then
    echo "Congratulations! You guessed it right!"
    let flag=1
  elif [[ $guess -gt 4 ]]
  then
    echo "Too high!.....Try again!"
  elif [[ $guess -lt 2 ]]
  then
    echo "Too low!.....Try again!"
  else
    echo "soo close.....go on!"
  fi
done
echo "Goodbye friend :).Have a nice day!"
