while getopts 'f:' opt
do
    case $opt in
        f) FILE_PATH=$OPTARG ;;
    esac
done

head -n 1 $FILE_PATH | tr ',' '\t'
tail -n +2 $FILE_PATH | sort | uniq -c | sort -nr | tr ',' '\t'