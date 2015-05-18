#/bin/sh

function="az tr ez fr ee"

for i in $function
do
echo "void fun_$i(void){}" >> main.c
git add main.c
git commit -m "Automatic commit function $i"
done