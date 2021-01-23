#!/usr/bin/bash
pgn-extract -Wuci 1.pgn | analyse --engine ethdev --searchdepth 8 --setoption MultiPV 8 --annotatePGN | pgn-extract -w99999 --output 1x.pgn


# screen -dmS "test2" bash -c "pgn-extract -Wuci 2.pgn | analyse --engine ethdev --searchdepth 8 --setoption MultiPV 8 --annotatePGN | pgn-extract -w99999 --output 2x.pgn"