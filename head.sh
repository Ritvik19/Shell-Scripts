N_ROWS=0
while getopts 'n:f:' c
do
  case $c in
    n) N_ROWS=$OPTARG ;;
    f) FILE_PATH=$OPTARG ;;
  esac
done
N_ROWS=$((N_ROWS+1))
head -n $N_ROWS $FILE_PATH | tr ',' '\t'