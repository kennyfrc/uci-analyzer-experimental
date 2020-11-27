while getopts e:i:o:d: option
do
case "${option}"
in
e) ENGINE=${OPTARG};;
i) INPUT=${OPTARG};;
o) OUTPUT=${OPTARG};;
d) DEPTH=${OPTARG};;
esac
done

pgn-extract -Wuci $INPUT | ./analyse --engine $ENGINE --searchdepth $DEPTH --annotatePGN | pgn-extract -w99999 --output $OUTPUT