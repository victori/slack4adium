all: compile

init:
	git submodule update --init

compile:
	xcodebuild -configuration Release -project "slack4adium.xcodeproj"

clean:
	rm -rf build
	rm -rf xcode_build
