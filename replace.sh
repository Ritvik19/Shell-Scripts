while getopts 's:d:f:r:' opt
do
    case $opt in
        s) SRC_PATH=$OPTARG ;;
        d) DST_PATH=$OPTARG ;;
        f) FIND=$OPTARG ;;
        r) REPLACE=$OPTARG ;;
    esac
done

sed "s/,${TEXT1},/,${TEXT2},/g" $SRC_PATH > ${DST_PATH}
