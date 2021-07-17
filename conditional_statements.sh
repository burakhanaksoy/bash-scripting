# N1=$1
# op=$2
# N2=$3

# result=0

# case $op in
# 	'+')
# ((result=$N1 + $N2)) ;;
# 'x')
# ((result=$N1 * N2)) ;;
# '-')
# ((result = $N1 - $N2)) ;;
# '/')
# ((result = $N1 / $N2)) ;;
# *)
# echo "Something went wrong..."
# exit 0 ;;
# esac

# echo "result: $result"


name=$1
mark=$2

case $mark in
	9[0-9]|100)
grade='A';;
8[0-9])
grade='B';;
7[0-9])
grade=C;;
6[0-9]|5[0-9]|4[0-9]|3[0-9]|2[0-9]|1[0-9]|0)
grade='F';;
*)
echo "something went wrong"
exit 0;;
esac

echo "grade: $grade"