all: compile

init:
	git submodule update --init

compile:
	if [ ! -d "adium" ]; then git submodule update --init; cd adium; make; cd ../; slack-libpurple; make; cd ../; fi
	xcodebuild -configuration Release -project "slack4adium.xcodeproj"

clean:
	rm -rf build
	rm -rf xcode_build
