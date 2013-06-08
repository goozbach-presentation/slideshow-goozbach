#slideshow -t s5blank -o output derek
EXTENSION := .md
THEME := s5blank 
#slideshow -t $(THEME) -o $(OUTPUTDIR)output-$@ $@

OUTPUTS = $(patsubst %.md,output/%.html,$(wildcard *$(EXTENSION)))

.SECONDEXPANSION:
%.html: $$(patsubst output/%.html,%.md,$$@)
	@echo outputs $@

all: $(OUTPUTS)
