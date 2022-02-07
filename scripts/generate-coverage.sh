#!/usr/bin/env bash

pod install
bundle install
echo "Generate Coverage Script ****"
/usr/libexec/PlistBuddy -c "Set :RATEndpoint ${{env.RATEndpoint}}" Example/Info.plist
/usr/libexec/PlistBuddy -c "Set :RMAAPIEndpoint $env.RMAAPIEndpoint" Example/Info.plist
bundle exec fastlane code_coverage
