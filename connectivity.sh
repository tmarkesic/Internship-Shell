echo Test connectivity

while read website ;
do
	ping -c 1 -q $website >&/dev/null;
	status="$?"
	if [ $status -eq 0 ]
	then 
	echo "$website IS AVAILABLE" 
	else 
	echo "$website IS NOT AVAILABLE"
	fi
done < listOfDomains
