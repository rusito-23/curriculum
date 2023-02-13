
CC = xelatex
CP = cp
EX = open
SRC = curriculum.tex
DST = curriculum.pdf
CLOUD = ~/Library/Mobile\ Documents/com~apple~CloudDocs
RLS = $(CLOUD)/Documents/CV/Igor_Andruskiewitsch.pdf
OUT = *.out *.log *.aux *.gz

all: open

build:
	$(CC) $(SRC)

open: build
	$(EX) $(DST)

release: build
	$(CP) $(DST) $(RLS)

clean:
	rm -rf $(DST) $(OUT)
