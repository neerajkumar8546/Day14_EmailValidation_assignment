#!/bin/bash -x

counter=0
array_email[ counter++ ]="abc@yahoo.com"
array_email[ counter++ ]="abc-100@yahoo.com"
array_email[ counter++ ]="abc.100@yahoo.com"
array_email[ counter++ ]="abc111@abc.com"
array_email[ counter++ ]="abc-100@abc.net"
array_email[ counter++ ]="abc.100@abc.com.au"
array_email[ counter++ ]="abc@1.com"
array_email[ counter++ ]="abc@gmail.com.com"
array_email[ counter++ ]="abc+100@gmail.com"

array_email[ counter++ ]="abc"
array_email[ counter++ ]="abc@.com.my"
array_email[ counter++ ]="abc123@gmail.a"
array_email[ counter++ ]="abc123@.com"
array_email[ counter++ ]="abc123@.com.com"
array_email[ counter++ ]=".abc@abc.com"
array_email[ counter++ ]="abc()*@gmail.com"
array_email[ counter++ ]="abc@%*.com"
array_email[ counter++ ]="abc..2002@gmail.com"
array_email[ counter++ ]="abc.@gmail.com"
array_email[ counter++ ]="abc@abc@gmail.com"
array_email[ counter++ ]="abc@gmail.com.1a"
array_email[ counter++ ]="abc@gmail.com.aa.au"

#regex="^([A-Za-z]+[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
regex="^([A-Za-z]+[A-Za-z0-9.-+]*\+?((\.|\_|\+)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"


count=0
counts=0

for (( i=0;i<=21;i++ ))
do
	if [[ ${array_email[$i]} =~ ${regex} ]]; then
		array_store_valid_email[ count++ ]=${array_email[$i]}
  else
		array_store_invalid_email[ counts++ ]=${array_email[$i]}
  fi


done

printf "\n"
echo "valid email List :-"
printf "\n"
for (( j=0;j<9;j++ ))
do
	echo ${array_store_valid_email[$j]}
	printf "\n"

done
printf "\n"
echo "invalid Email List:"
printf "\n"
for (( l=0;l<13;l++ ))
do
   echo ${array_store_invalid_email[$l]}
   printf "\n"

done

