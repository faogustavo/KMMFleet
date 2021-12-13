BUILD_DIR=$(xcodebuild -scheme iosApp -workspace iosApp/iosApp.xcworkspace -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 13,OS=15.0' -configuration Debug -showBuildSettings build | grep TARGET_BUILD_DIR | sed -n -e 's/.* = \(.*\)/\1/p')
xcrun simctl install booted "$BUILD_DIR/iosApp.app"
xcrun simctl launch booted orgIdentifier.iosApp
