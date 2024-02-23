SRC 	= src
BUILD 	= build
EXT 	= external

CC 		= gcc
CFLAGS 	= -Wall -Wextra -ggdb
DEPS	= -I$(EXT)/cimgui -I$(EXT)/sokol -l$(EXT)/cimgui/cimgui

all: $(BUILD)/cimgui.o $(BUILD)/demo.o

$(BUILD)/demo.o: $(SRC)/demo.c
	# $(CC) $(CFLAGS) -c $(SRC)/demo.c -o $(BUILD)/demo
	$(CC) $(CFLAGS) $(DEPS) $(SRC)/demo.c $(BUILD)/cimgui.o -o $(BUILD)/demo

$(BUILD)/cimgui.o: $(EXT)/cimgui/cimgui.cpp $(EXT)/cimgui/cimgui.h
	cd $(EXT)/cimgui;	\
		make


.PHONY: all
