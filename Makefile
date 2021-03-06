open_project: setup_project
	open *.xcworkspace

setup_project: xcodegen cocoapods

xcodegen:
	xcodegen

cocoapods:
	bundle install && bundle exec pod install

carthage_bootstrap:
	carthage bootstrap --no-use-binaries --platform iOS --cache-builds

clean:
	rm -rf Pods
	rm -rf *.xcodeproj
	rm -rf *.xcworkspace

build: carthage_bootstrap setup_project
	xcodebuild -workspace TestProject.xcworkspace -scheme SharedScheme build
