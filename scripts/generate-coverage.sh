#!/usr/bin/env bash

pod install
bundle install
/usr/libexec/PlistBuddy -c "Set :RATEndpoint ${{env.RATEndpoint}}" Example/Info.plist
/usr/libexec/PlistBuddy -c "Set :RMAAPIEndpoint $env.RMAAPIEndpoint" Example/Info.plist
bundle exec fastlane code_coverage
