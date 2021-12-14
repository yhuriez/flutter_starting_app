#!/bin/bash

if [ "$1" == "--clean" ]
then
   echo "Running clean..."
   flutter clean
else
   echo "Skipping clean..."
fi

echo "Generate derived code..."
flutter packages pub run build_runner build --delete-conflicting-outputs


# Android publication
cd android/ || exit
fastlane push

# iOS publication
cd ../ios || exit
pod install
fastlane push
cd ..