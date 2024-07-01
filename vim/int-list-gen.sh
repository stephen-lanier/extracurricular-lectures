FP='./int_list.txt'
UB=32502
OF=$(( $UB / -2 ))

if ! test -f $FP; then
    touch $FP
fi

for i in $(seq 1 1000);
do
    echo $(($OF + $RANDOM % $UB)) >> $FP
done
