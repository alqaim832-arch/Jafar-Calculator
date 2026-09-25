#!/usr/bin/env bash
set -euo pipefail
if ! command -v gradle >/dev/null 2>&1; then
  echo "Gradle is not installed. Open this project in Android Studio, or install Gradle 8.9+ and rerun."
  exit 1
fi
gradle :app:assembleDebug
echo "Debug APK: app/build/outputs/apk/debug/app-debug.apk"
