# http://goozbach.com/includes/contact.html
CONTACTFILE := contact.html
CONTACTURL := http://goozbach.com/includes/$(CONTACTFILE)

all: $(CONTACTFILE)

.PHONY: $(CONTACTFILE)

$(CONTACTFILE):
	wget -qN -O $(CONTACTFILE) $(CONTACTURL)
	sed -i '' 's/http:\/\/.*\/\([^\/]*\.jpg\)/\1/g' $(CONTACTFILE)

$(notdir $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))): $(CONTACTFILE)
	wget -qN -O $(notdir $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))) $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))

debug:
	@echo "  AVATARURL:\t$(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE))"
	@echo "     AVATAR:\t$(notdir $(shell grep -o 'http://gravatar[^"]*' $(CONTACTFILE)))"
	@echo "CONTACTFILE:\t$(CONTACTFILE)"
	@echo " CONTACTURL:\t$(CONTACTURL)"

