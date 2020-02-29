while getopts 'f:' c
do
  case $c in
    f) FILE_PATH=$OPTARG ;;
  esac
done
head -n 1 $FILE_PATH | tr ',' '\n' | cat -s -n