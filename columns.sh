while getopts 'c:f:n:' opt
do
    case $opt in
        f) FILE_PATH=$OPTARG ;;
    esac
done
head -n 1 $FILE_PATH | tr ',' '\n' | cat -s -n