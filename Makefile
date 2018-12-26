DESTDIR=dist

install:
	mkdir -p $(DESTDIR)/opt/node-dummy-app
	npm install
	cp -r node_modules/ *.js *.json $(DESTDIR)/opt/node-dummy-app
	mkdir -p $(DESTDIR)/lib/systemd/system/
	cp init/node-dummy-app.service $(DESTDIR)/lib/systemd/system/node-dummy-app.service

clean:
	rm -rf node_modules/
