echo "Welcome to the guessing game!"
value=$(ls -l | egrep -c "^-")
get_low(){
  low = $(expr $1 - 2)
  return $low
}
get_up(){
  up = $(expr $1 + 2)
  return $up
}
up= $(get_up $value)
low= $(get_low $value)
let flag=0
while [[ $flag == 0 ]]
do
  echo "Enter your guess of the number of files present in the current directory :"
  read guess
  if [[ $guess -eq $value ]]
  then
    echo "Congratulations! You guessed it right!"
    let flag=1
  elif [[ $guess -gt $up ]]
  then
    echo "Too high!.....Try again!"
  elif [[ $guess -lt $low ]]
  then
    echo "Too low!.....Try again!"
  else
    echo "soo close.....go on!"
  fi
done
echo "Goodbye friend :).Have a nice day!"
