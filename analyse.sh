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
# pgn-extract -Wuci 1.pgn | analyse --engine rodentIV --searchdepth 8 --setoption Threads 4 -setoption PersonalityFile /home/ubuntu/engines/rodent-iv/personalities/morphy.txt --annotatePGN | pgn-extract -w99999 --output 1m.pgn

# pgn-extract -Wuci 10.pgn | analyse --engine rodentIV --searchdepth 8 --setoption PersonalityFile /home/ubuntu/engines/rodent-iv/personalities/morphy.txt --annotatePGN | pgn-extract -w99999 --output 10m.pgn

# no threads
# pgn-extract -Wuci 1.pgn | analyse --engine rodent --searchdepth 8 --setoption PersonalityFile /Users/kennyfrc/documents/code/chess/rodent-iv/personalities/morphy.txt --annotatePGN | pgn-extract -w99999 --output 1m.pgn