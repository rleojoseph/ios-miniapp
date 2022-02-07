#!/usr/bin/env bash

pod install
bundle install
bundle exec fastlane code_coverage
