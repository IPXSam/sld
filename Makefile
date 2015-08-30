CC=gcc
CFLAGS=-c -g
LDFLAGS=-g
SOURCES=sld.c label.c output.c sof.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=sld

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) -o $@ $(OBJECTS) $(LDFLAGS)

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS)
	rm -f $(EXECUTABLE)
