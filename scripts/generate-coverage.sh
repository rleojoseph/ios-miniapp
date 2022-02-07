#!/usr/bin/env bash

pod install
bundle install
/usr/libexec/PlistBuddy -c "Set :RATEndpoint ${{secrets.RATEndpoint}}" Example/Info.plist
/usr/libexec/PlistBuddy -c "Set :RMAAPIEndpoint ${{secrets.RMAAPIEndpoint}}" Example/Info.plist
bundle exec fastlane code_coverage
