
CC = xelatex
EX = open
SRC = curriculum.tex
DST = curriculum.pdf
OUT = *.out *.log *.aux *.gz

all: open

build:
	$(CC) $(SRC)

open: build
	$(EX) $(DST)

clean:
	rm -rf $(DST) $(OUT)
