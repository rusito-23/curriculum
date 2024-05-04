
CC = xelatex
CP = cp
EX = open
SRC = curriculum.tex
DST = curriculum.pdf
DOCS = ~/Documents
RLS = $(DOCS)/Curriculum/Igor_Andruskiewitsch.pdf
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
