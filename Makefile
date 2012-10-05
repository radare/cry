PREFIX?=/usr
DESTDIR?=/

D=${DESTDIR}/${PREFIX}

all:
	chmod +x cry cryo
	
symstall: all
	ln -fs $(shell pwd)/cry $D/bin/cry
	ln -fs $(shell pwd)/cryo $D/bin/cryo

install: all
	cp -f cry $D/bin/cry
	cp -f cryo $D/bin/cryo
