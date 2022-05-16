#!bin/bash

set -e

r_d(){
	if [ "$4" == "VMone" ]
	then
		port=$1
	else
		port=$2
	fi
	echo "this is $port"
}

case "$b_name" in
	dev)	r_d 123 456 $b_name $instance;;
	qa)    r_d 1234 4567 $b_name $instance;;
	prod)    r_d 12345 45678 $b_name $instance;;
	*) 	echo "unknow"
esac
