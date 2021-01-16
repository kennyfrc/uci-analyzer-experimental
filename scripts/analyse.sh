#!/bin/bash

INPUT=$1
OUTPUT=$2
ENGINE=$3
DEPTH=$4
MULTIPV=$5

pgn-extract -Wuci $INPUT | analyse --engine $ENGINE --searchdepth $DEPTH --setoption MultiPV $MULTIPV --annotatePGN | pgn-extract -w99999 --output $OUTPUT

# pgn-extract -Wuci Kasparov.pgn | analyse --engine sf5 --searchdepth 1 --annotatePGN | pgn-extract -w99999 --output annotated-test.pgn

# pgn-extract -Wuci Kasparov.pgn | analyse --engine sf5 --searchdepth 1 --setoption MultiPV 8 --annotatePGN | pgn-extract -w99999 --output annotated-mpv8.pgn