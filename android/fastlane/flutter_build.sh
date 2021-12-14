#!/bin/bash

if [ "$1" == "--apk" ]
then
   echo "Building APK..."
   flutter build apk --release
else
   echo "Building AAB..."
   flutter build appbundle --release
   # Use "flutter build appbundle --release --no-sound-null-safety" if you have libraries without nnull safety
   # (but not recommended, please avoid it whenever possible)
fi