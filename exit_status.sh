# Analyzes whether the run command 
# executed successfully or not

adasads

status=$?

if [ $status -eq 0 ] ; then
	echo "Command executed successfully..."
else
	echo "Command failed to execute..."
fi
