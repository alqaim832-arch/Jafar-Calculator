# Jafar Calculator — Android APK Build Setup

This project packages the supplied `Jafar_Calculator.html` as a native Android WebView app.
The Quran data and calculator remain inside the local HTML asset, so the app does not need a web server for its core calculator/Quran features.

## Project details
- App name: Jafar Calculator
- Application ID: `com.naqvistore.jafarcalculator`
- Version: 1.0.0
- minSdk: 23 (Android 6.0+)
- targetSdk / compileSdk: 35
- Android Gradle Plugin: 8.7.3
- Gradle: 8.9
- Java: 17

## Easiest method: Android Studio
1. Install Android Studio.
2. Open this folder as an existing Gradle project.
3. Allow Android Studio to download the required Gradle/Android SDK components.
4. Select **Build > Build APK(s)**.
5. The debug APK will be at:
   `app/build/outputs/apk/debug/app-debug.apk`

## Command line
Install JDK 17, Android SDK 35 and Gradle 8.9+, then run:

Linux/macOS:
`./build_apk.sh`

Windows:
`build_apk.bat`

The debug APK is produced in `app/build/outputs/apk/debug/`.

## GitHub automatic build
The repository includes `.github/workflows/build-apk.yml`.
Upload this project to GitHub, then open **Actions → Build Jafar Calculator APK → Run workflow**.
The workflow builds both debug and unsigned release APKs and publishes them as downloadable workflow artifacts.

## Release signing
For a real distributable APK, create a private release keystore and never commit it.
Copy `keystore.properties.example` to `keystore.properties`, then set:
- `storeFile`
- `storePassword`
- `keyAlias`
- `keyPassword`

`keystore.properties` and `*.jks` are already ignored by Git.

After that, `gradle :app:assembleRelease` produces a signed `app-release.apk`.

## Important
Keep the same release keystore for future versions. If it is lost, existing installed versions cannot be upgraded with the same signing identity.
