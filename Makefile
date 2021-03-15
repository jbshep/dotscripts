SHELL=/bin/bash

SCRIPTFILES = canvas-roster flaskmake flaskrun nicezip set-semester show-roster what-classes uncanvas makehtml

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

