# http://goozbach.com/includes/contact.html
CONTACTFILE := contact.html


all: slides.html

.PHONY: $(CONTACTFILE) slides.html

$(notdir $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))): $(CONTACTFILE)
	wget -qN -O $(notdir $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))) $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))

slides.html:
	./updateslides
