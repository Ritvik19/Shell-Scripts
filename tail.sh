while getopts 'f:r:' opt
do
    case $opt in
        f) FILE_PATH=$OPTARG ;;
        r) N_ROWS=$OPTARG ;;
    esac
done

head -n 1 $FILE_PATH | tr ',' '\t'
tail -n $N_ROWS $FILE_PATH | tr ',' '\t'