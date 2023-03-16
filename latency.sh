
host="8.8.8.8"
echo "Test latency for $host"
latency=$(ping -c 1 $host | grep "avg" |  awk -F "/" '{printf"%.2f ms", $5}')
echo "$latency" 

