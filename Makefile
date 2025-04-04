SHELL=/bin/bash

SCRIPTFILES = canvas-roster cs1-robot flaskrun ghlink nicezip set-semester show-roster what-classes uncanvas makeflask makehtml makeenv dockerkillall gitclone pydev open-webs

link: $(SCRIPTFILES)
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		ln -s ~/.scripts/$${i} ~/bin/$${i}; \
		chmod 700 ~/.scripts/$${i}; \
	done

unlink: $(SCRIPTFILES)
	for i in $?; do \
		rm -f ~/bin/$${i}; \
		cp ~/.scripts/$${i} ~/bin/$${i}; \
		chmod 700 ~/bin/$${i}; \
	done

