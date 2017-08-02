Qumu Enterprise Apps - Custom Skin or Branding
===================


This document will act as a guide on how to apply custom skinning to our QE apps. It will also provide the insights on how the Qumu mobile team have been doing it so far. 

- A **dist** folder is to be provided with all the required files as described below.
- Branding has to be done on the **latest available store version** always.
- Latest source code for the apps can be found on **Qumunity**.

----------


iOS
-------------

- QE mobile app is a native iOS app developed in Objective-C.
- Refer to **Branding_Customization_Specification_iOS.pdf** to get an idea on the items that can be customised.
- Refer to **Checklist_iOS_Branding.xls**  for the required assets and values. Make sure we receive all those items from the customer before we start branding. If any of these are outdated, please update accordingly.
- Qumu have been using a bash script **GenerateBrandedApp.sh** which takes input parameters from "inputBranding.txt" to generate a workspace folder with all the items placed at appropriate locations ready to build the custom app.


Please follow the steps below to create a workspace for custom branding that can be built in Xcode. 

> **Steps to generate custom workspace:**

> - Check if all the image names and image dimensions supplied by client match exactly as provided in the Checklist_iOS_Branding.xls file. 
> -- E.g: app_icon_180x180.png should be 180x180 dimensions. Check each and every image for the dimensions.
> - Update the assets & values received in the **sample_custom_folder** provided. 
> -- Update the **CustomAssets.xcassets** resources by replacing the assets.
> -- Modify **CustomConstants.h** file to match the customer configurations.
> -- Update **config.txt** with the custom app name, bundle identifier & custom scheme as per customer inputs in checklist. Also update bundle version and keep MDM_TYPE = 0.
> - Get the source code version of the app on which the branding has to be performed. This always has to be done on the version available in store. This can be obtained from qumunity.  Currently, it is **Release_2.6.5**
> - Update the locations in **inputBranding.txt** to match the locations on your mac.
> - In terminal, cd to the directory where you placed **GenerateBrandedApp.sh** file and run the following commands.
```
>$bash GenerateBrandedApp.sh inputBranding.txt 
 
>$cd GeneratedCustomApp/qumu_ios_cinnamon_workspace
 
>$pod install
```
>- open the qumu_ios_cinnamon_workspace.xcworkspace file from the generated folder(i.e. WORK_DIR parameter in inputBranding.txt) in Xcode and build it.

> **Supporting Universal links:**
> 
> -  Enable app links in target capabilities-->AssociatedDomains which should generate an entitlements file similar to the one provided in dist folder.
> - All other requirements related to universal links as mentioned in apple documentation should also be done for this to work.

----------
Android
-------------

- QE mobile app is a native android app.
-  Refer to **Branding_Customization_Specification_Android.pdf** to get an idea on the items that can be customised.
- Refer to **Checklist_Android_Branding.xls**  for the required assets and values. Make sure we receive all those items from the customer before we start branding. If any of these are outdated, please update accordingly.
- Earlier, while we used to work on eclipse we used to have an automation script to generate apk. But as we moved our project to Android studio, we are relying on cradle flavours to generate custom branded builds. 
- In the android project provided, a sample flavour is already configured for demo purposes. It is just adding additional flavours similarly while generating a new custom app.

----------
Items to verify after branding
-------------
- AppName
- Bundle Identifier/package name
- Version
- Build Number
- Schema open url
- About Screen
- Vcc Server Settings Screen
- Image Logos in all screens
- Background and font colors
- Always uplaod a video with and without thumbnail and check if default thumbnail is coming or not
- Verify Universal links for iOS app