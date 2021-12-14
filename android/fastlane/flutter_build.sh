#!/bin/bash

if [ "$1" == "--apk" ]
then
   echo "Building APK..."
   flutter build apk --release --no-sound-null-safety
else
   echo "Building AAB..."
   flutter build appbundle --release --no-sound-null-safety
fi