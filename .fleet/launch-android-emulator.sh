emulator -list-avds | awk '{if(NR==1) print}' | xargs emulator -avd
