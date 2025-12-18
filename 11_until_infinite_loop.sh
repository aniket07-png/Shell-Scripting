$!/bin/bash

#Until loop (it is opposite of while loop)

a=10

until [[ $a -eq 0 ]]
do
        echo "Value of a is $a"
        let a--
done
<<comment
#Infinite loop

while true
do
	echo "Hi Buddy"
	sleep 5s
done


#Infinite loop using for loop

for (( ;; ))
do
	echo "Hey there!"
	sleep 3s
done
comment
