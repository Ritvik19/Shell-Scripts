while getopts 's:d:' opt
do
    case $opt in
        s) SRC_PATH=$OPTARG ;;
        d) DST_PATH=$OPTARG ;;
    esac
done

uniq -u $SRC_PATH > ${DST_PATH}