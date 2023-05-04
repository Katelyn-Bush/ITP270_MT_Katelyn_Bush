 #!/bin/bash
 2
 3 echo "Enter the Subnet"
 4 read Subnet
 5
 6 if [ "$Subnet" = "" ]
 7 then
 8 echo "Enter the Subnet:"
 9 echo "Syntax Example = ./ping_sweep.sh 10.1.32"
10 else 
11
12 for IP in $(seq 1 254); do
13
14         ping -c 1 $Subnet.$IP | grep "64 bytes" | cut -d " " -f 4 | tr -d ":>
15 done
16 fi
