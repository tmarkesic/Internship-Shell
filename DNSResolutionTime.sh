while read website ; 
do  
   echo "$website"
   dig $website +nocomments |  grep "Query time" | awk -F" " '{printf" - resolution time: %.2f ms \n", $4}' 
done < listOfDomains
