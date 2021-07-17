numbers=(1 2 4 8 16 32 64 128)

for t in ${numbers[@]}; do
    if [ $t -eq 64 ]; then
    	echo "skipping 64!"
        continue
    fi
    echo "Number: " + $t
done
