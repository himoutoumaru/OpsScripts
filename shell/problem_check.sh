next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

echo "Check Uptime"
next
uptime
next

echo "Check Dmesg"
next
dmesg | tail
next

echo "Check VMStat"
next
vmstat 1 5
next

echo "Chech MPStat"
next
mpstat -P ALL 1 5
next

echo "Check PIDStat"
next
pidstat 1 5
next

echo "Check IOStat"
next
iostat xz 1 5
next

echo "Check Free Memory"
next
free -m
next

echo "Check Netflow"
next
sar -n DEV 1 5
next

echo "Check TCP Connection"
next
sar -n TCP,ETCP 1 5
next

echo "Check Top List"
next 
top -n 2
next
