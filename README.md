# ToogleTouchScreen
Toggle your touchscreen with just a button! Made to resolve false touch inputs of my Microsoft Surface Pro.

## How it works
The powershell script looks for your touchscreen device using keywords you provide in the script file. Currently, it's set to `Precise touch`, which matches the touchscreen of a Surface 5.

It toggles the device from "enabled" to "disabled" or vice versa and displays a small message box for some seconds informing the user of what happened.

Now create a shortcut or use the existing one to pin the script to your start menu or taskbar.

That's it!

## How to use it
1. Download the script or all files
2. Open the script `touchscreen_toggle.ps1` and edit the keywords matching your devices name in the second line of the script.
3. Create a shortcut
   - Right-click on `touchscreen_toggle.ps1` and select `Create Shortcut`
   - Right-click on the Shortcut and select `Properties`
   - Change the `Target` setting to the path to the script
   - Change the `Start in` setting to the folder containing the script
   - Change the `Run` setting to `Minimized`
   - Check `Run as Administrator` in Advanced Properties
   - Optional: Change the icon to the provided one or your own
4. Pin the Shortcut to your taskbar by dragging it into it or right-clicking `Pin to Taskbar`. Or pin it to your start menu with a right-click `Pin to Start`.