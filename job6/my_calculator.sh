if [ $2 = "+" ] ; then
    res=$(( $1 + $3  ))
    echo "Result : $res"
elif  [ $2 = "-" ] ; then
    res=$(( $1 - $3 ))
    echo "Result : $res"
elif  [ $2 = "x" ] ; then
        res=$(( $1 * $3 ))
        echo "Result : $res"
elif  [ $2 = "/" ] ; then
        res=$(( $1 / $3 ))
    echo "Result : $res"
else
    echo 'error'
fi
