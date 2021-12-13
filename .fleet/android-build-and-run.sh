./gradlew :androidApp:assembleDebug :androidApp:installDebug
adb devices | sed '1d;$d' | awk '{split($0, a, " "); print a[1]}' | xargs -I {} adb -s {} shell am start -n dev.valvassori.kmp.kmmfleet.android/dev.valvassori.kmp.kmmfleet.android.MainActivity
