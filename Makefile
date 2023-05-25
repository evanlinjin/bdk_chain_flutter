.DEFAULT_GOAL := help
PROJECTNAME=$(shell basename "$(PWD)")
SOURCES=$(sort $(wildcard ./src/*.rs ./src/**/*.rs))
# ##############################################################################
# # GENERAL
# ##############################################################################

.PHONY: help
help: Makefile
	@echo
	@echo " Available actions in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

## init: Install missing dependencies.
init:
	rustup target add aarch64-apple-ios x86_64-apple-ios
	rustup target add aarch64-apple-darwin x86_64-apple-darwin
	rustup target add aarch64-linux-android armv7-linux-androideabi i686-linux-android x86_64-linux-android
	cargo install flutter_rust_bridge_codegen
	cargo install cargo-ndk
	@if [ $$(uname) == "Darwin" ] ; then cargo install cargo-lipo ; fi

clean:
	cargo clean
	rm -rf android/src/main/jniLibs

## all: Compile iOS, Android and bindings targets
all: init ios android bindings

## ios: Compile the iOS universal library
ios:
	@if [ $$(uname) == "Darwin" ] ; then target/universal/release/libbdk_chain_flutter.so; fi
target/universal/release/libbdk_chain_flutter.so:
	cargo lipo --release

## android: Compile the android targets (arm64, armv7, amd64 and i686)
android: target/armv7-linux-androideabi target/aarch64-linux-android target/i686-linux-android target/x86_64-linux-android
target/armv7-linux-androideabi:
	cargo ndk -t armeabi-v7a build --release
target/aarch64-linux-android:
	cargo ndk -t arm64-v8a build --release
target/i686-linux-android:
	cargo ndk -t x86 build --release
target/x86_64-linux-android:
	cargo ndk -t x86_64 build --release

bindings:
	mkdir -p android/src/main/jniLibs/arm64-v8a
	mkdir -p android/src/main/jniLibs/armeabi-v7a
	mkdir -p android/src/main/jniLibs/x86
	cp target/aarch64-linux-android/release/libbdk_chain_flutter.so android/src/main/jniLibs/arm64-v8a
	cp target/armv7-linux-androideabi/release/libbdk_chain_flutter.so android/src/main/jniLibs/armeabi-v7a
	cp target/i686-linux-android/release/libbdk_chain_flutter.so android/src/main/jniLibs/x86
