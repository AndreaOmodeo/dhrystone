rm dhry0
rm dhry1
rm dhry2
rm dhry3
read -p "Press enter to continue"
gcc -w -DCLOCK_GETTIME_CPU -O0 -march=native -pipe -fomit-frame-pointer -o dhry0 ../*.c
gcc -w -DCLOCK_GETTIME_CPU -O1 -march=native -pipe -fomit-frame-pointer -o dhry1 ../*.c
gcc -w -DCLOCK_GETTIME_CPU -O2 -march=native -pipe -fomit-frame-pointer -o dhry2 ../*.c
gcc -w -DCLOCK_GETTIME_CPU -O3 -march=native -pipe -fomit-frame-pointer -o dhry3 ../*.c
read -p "Press enter to continue run0"
./dhry0
read -p "Press enter to continue run0"
./dhry0
read -p "Press enter to continue run0"
./dhry0
read -p "Press enter to continue run1"
./dhry1
read -p "Press enter to continue run1"
./dhry1
read -p "Press enter to continue run1"
./dhry1
read -p "Press enter to continue run2"
./dhry2
read -p "Press enter to continue run2"
./dhry2
read -p "Press enter to continue run2"
./dhry2
read -p "Press enter to continue run3"
./dhry3
read -p "Press enter to continue run3"
./dhry3
read -p "Press enter to continue run3"
./dhry3