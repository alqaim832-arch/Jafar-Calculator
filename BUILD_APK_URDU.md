# APK بنانے کا آسان طریقہ

### طریقہ 1 — Android Studio
1. Android Studio انسٹال کریں۔
2. اس ZIP کو Extract کریں۔
3. `JafarCalculator_Android` فولڈر Android Studio میں Open کریں۔
4. Gradle Sync مکمل ہونے دیں۔
5. **Build → Build APK(s)** پر کلک کریں۔
6. APK یہاں ملے گی:
   `app/build/outputs/apk/debug/app-debug.apk`

### طریقہ 2 — GitHub سے خودکار APK
اس project میں GitHub Actions پہلے سے شامل ہے۔ Project کو GitHub repository میں upload کریں، پھر:
**Actions → Build Jafar Calculator APK → Run workflow**

Build مکمل ہونے کے بعد Actions کے **Artifacts** میں APK مل جائے گی۔

### Release APK
اگر Google Play یا مستقل distribution کے لیے APK بنانی ہو تو اپنی private signing key بنائیں۔
`keystore.properties.example` کی copy بنا کر `keystore.properties` نام رکھیں اور اپنی signing معلومات درج کریں۔
اس file اور `.jks` کو کسی کے ساتھ public نہ کریں۔
