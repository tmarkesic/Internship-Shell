printf "Memory\t\tCPU\n"
MEMORY=$(free -m | awk 'NR==2{printf"%0.2f%%\t\t",($3/$2)*100}')

CPU=$(top -bn1 | grep load | awk '{printf "%0.2f%%\t\t\n", $(NF-2)}')
echo "$MEMORY$CPU"
