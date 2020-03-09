N_ROWS=0
while getopts 'f:r:' opt
do
    case $opt in
        f) FILE_PATH=$OPTARG ;;
        r) N_ROWS=$OPTARG ;;
    esac
done

N_ROWS=$((N_ROWS+1))
head -n $N_ROWS $FILE_PATH | tr ',' '\t'