while getopts 'c:f:' opt
do
    case $opt in
        c) COL=$OPTARG ;;
        f) FILE_PATH=$OPTARG ;;
    esac
done

cut -d ',' -f $COL $FILE_PATH | head -n 1
cut -d ',' -f $COL $FILE_PATH | tail -n +2 | sort | uniq -c | sort -n