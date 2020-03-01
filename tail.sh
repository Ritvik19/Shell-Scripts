while getopts 'n:f:' c
do
  case $c in
    n) N_ROWS=$OPTARG ;;
    f) FILE_PATH=$OPTARG ;;
  esac
done
head -n 1 $FILE_PATH | tr ',' '\t'
tail -n $N_ROWS $FILE_PATH | tr ',' '\t'