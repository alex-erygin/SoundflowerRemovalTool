all: SoundflowerRemovalTool-1.0.pkg

SoundflowerRemovalTool-1.0.pkg: preinstall postinstall
	mkdir -p Build
	pkgbuild --identifier fm.ultraschall.pkg.SoundflowerRemovalTool --version 1.0 --root ./ --scripts ./ --nopayload Build/SoundflowerRemovalTool-1.0.pkg
	
clean:
	rm -rf Build
	
cleanall:
	make clean
		