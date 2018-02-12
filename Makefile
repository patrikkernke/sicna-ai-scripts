libpath = ~/Library/AIScripts/SICNA
scriptpath = /Applications/Adobe\ Illustrator\ CC\ 2018/Presets.localized/de_DE/Skripten/SICNA/

install :
	@make clean
	@mkdir -p $(libpath)
	@cp -r ./libs $(libpath)
	@echo "Bibliothek kopiert."
	@mkdir $(scriptpath)
	@cp -r ./scripts/. $(scriptpath)
	@echo "Skripte kopiert."

update:
	@git pull origin master
	@make install

clean :
	@if [ -d $(libpath) ]; \
	then \
		rm -r $(libpath); \
		echo "Vorhandene Bibliothek gelöscht."; \
	fi
	@if [ -d $(scriptpath) ]; \
	then \
		rm -r $(scriptpath); \
		echo "Vorhandene Skripte gelöscht."; \
	fi