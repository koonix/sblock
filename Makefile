PREFIX ?= /usr/local
.PHONY: all install uninstall

all :

install :
	install -D sblock ${DESTDIR}${PREFIX}/bin/sblock
	install -D sblock.cron ${DESTDIR}/etc/cron.daily/sblock
	install -Dm644 README.md ${DESTDIR}${PREFIX}/share/doc/sblock/README.md
	install -Dm644 LICENSE ${DESTDIR}${PREFIX}/share/licenses/sblock/LICENSE

uninstall :
	rm -f  ${DESTDIR}${PREFIX}/bin/sblock
	rm -f  ${DESTDIR}/etc/cron.daily/sblock
	rm -rf ${DESTDIR}${PREFIX}/share/doc/sblock
	rm -rf ${DESTDIR}${PREFIX}/share/licenses/sblock
