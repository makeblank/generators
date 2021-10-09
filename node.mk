# Creates a blank node project. 
#
# https://nodejs.org/dist/latest-v16.x/docs/api/packages.html
# https://docs.npmjs.com/cli/v7/configuring-npm/package-json

.PHONY: init

all: package.json init

package.json:
	echo '{}' > $@

ifdef configFiles
init:: package.json $(configFiles)
	$(BLANK) update $< $(addprefix -ma @,$(filter-out package.json,$^)) > $<~
	mv -f $<~ $<
endif

ifdef packages
init::
	npm i $(packages)
endif

ifdef devPackages
init::
	npm i -D $(devPackages)
endif
