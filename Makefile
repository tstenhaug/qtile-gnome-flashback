DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/qtile-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/qtile-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/qtile-gnome-flashback.desktop $(PREFIX)/share/applications/qtile-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/qtile-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/qtile-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/qtile-gnome-flashback-session $(PREFIX)/bin/qtile-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/qtile-gnome-flashback $(PREFIX)/bin/qtile-gnome-flashback
	$(INSTALL) -m 0644 -D files/qtile-gnome-flashback.gschema.override $(PREFIX)/share/glib-2.0/schemas/01_qtile-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PREFIX)/bin/qtile-gnome-flashback \
	      $(PREFIX)/bin/qtile-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/qtile-gnome-flashback.session \
	      $(PREFIX)/share/applications/qtile-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/qtile-gnome-flashback-session.desktop \
	      $(PREFIX)/share/glib-2.0/schemas/01_qtile-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: install uninstall
