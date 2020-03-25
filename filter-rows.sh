INSENSITIVE=false
INVERT=false
while getopts 'f:v:ir' opt
do
    case $opt in
        v) VALUE=$OPTARG ;;
        f) FILE_PATH=$OPTARG ;;
        i) INSENSITIVE=true;;
        r) INVERT=true;;
    esac
done

if [ "$INVERT" = true ] && [ "$INVERT" = true ] ;then
    head -n 1 $FILE_PATH | column -t -s ','
    grep -nvi $VALUE $FILE_PATH | column -t -s ','
elif [ "$INVERT" = true ] ; then
    head -n 1 $FILE_PATH | column -t -s ','
    grep -nv $VALUE $FILE_PATH | column -t -s ','
elif [ "$INSENSITIVE" = true ] ; then
    head -n 1 $FILE_PATH | column -t -s ','
    grep -ni $VALUE $FILE_PATH | column -t -s ','
else
    head -n 1 $FILE_PATH | column -t -s ','
    grep -n $VALUE $FILE_PATH | column -t -s ','
fi