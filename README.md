# iOS SKD Airhip provisional push notification issue

Sample project to show the issue with Airship iOS SDK 16.2.0 version where when migrating from 14.4.1 version, and using provisional push notifications, permission pop up appears after updating to 16.2.0 version.

## How to reproduce it
* In the AppDelegate class set your keys and secrets
* Run the project (with 14.4.1 by default)
    * Push Notifications permission pop should not appear

* Go to Project Package dependencies and set version to 16.2.0

* In the AppDelegate class comment the 14.4.1 AppDelegate implementation and uncomment the 16.2.0 implementation

* In the AppDelegate class set your keys and secrets

* Run the project (now running with 16.2.0 sdk)
    * Push Notifications permission pop appears (it shouldn't)
