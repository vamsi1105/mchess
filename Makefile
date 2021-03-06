#COMPILING AND LINKING
CC	= gcc
CFLAGS	= -Wall -Wextra -Wunused -g
LDFLAGS =
OBJECTS = main.o chessboard.o chesspieces.o game.o

#PROJECT
PROJECT  = mchess
VERSION  = 0
REVISION = 1

#PACKAGE
TARDIR  = $(PROJECT)-$(VERSION).$(REVISION)
TARFILE = $(TARDIR).tar

.PHONY: all clean

all: $(PROJECT)

$(PROJECT): $(OBJECTS)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -c $(CFLAGS) $<

clean:
	rm -f $(OBJECTS) $(PROJECT)
