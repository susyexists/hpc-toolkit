num_cores=$(cat /proc/cpuinfo | grep processor | wc -l)
overhead_cpu=4

if [ $num_cores -le $overhead_cpu ]
then
num_cores=1 
else
computaion_cores=$((num_cores - overhead_cpu))
fi
echo "${computaion_cores}"

