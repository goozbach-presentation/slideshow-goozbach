EXTENSION := .md
THEME := s5blank 
OUTPUTDIR := './'

SOURCES = $(patsubst %.md,%,$(wildcard *$(EXTENSION)))
OUTPUTS = $(patsubst %.md,output-%,$(wildcard *$(EXTENSION)))

#slideshow -t s5blank -o output derek
%: %.md
	slideshow -t $(THEME) -o $(OUTPUTDIR)output-$@ $@

.SECONDEXPANSION:
$(OUTPUTS): $$(patsubst output-%,%,$$@)
	mkdir -p "$@"

all: $(SOURCES)
