#!/usr/bin/env bash

# pod install
# bundle install
# bundle exec fastlane code_coverage
/usr/libexec/PlistBuddy -c 'print RATEndpoint' Example/Info.plist
/usr/libexec/PlistBuddy -c 'print RATEndpoint' /Example/Info.plist

