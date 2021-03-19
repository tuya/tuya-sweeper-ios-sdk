# Tuya Smart Sweeper iOS SDK

[English](README.md) | [中文版](README-zh.md)

## Overview

Tuya Smart Sweeper iOS SDK is based on the [Tuya Smart Home iOS SDK](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/feature-overview?id=Ka5cgmlybhjk8) (Home SDK) and expands the interface package that enables the required functions of a sweeper device. This allows you to simplify the development process. The following functions are supported:

- Streaming media (for gyro or visual sweepers) universal data channel
- Data transmission channel of laser sweeper
- Laser sweeper real-time or historical sweep record
- Sweeper universal voice download service

> The laser sweeper data is divided into real-time data and historical data. Both types of data include map data and path data and are stored in files in the cloud. The map and path of real-time data are stored in different files, and the map and path of historical data are stored in the same file. The map and path data are split and read based on the specified rules.
>



## Preparation

Tuya Smart Sweeper iOS SDK is used in the development based on the [Tuya Smart Home iOS SDK](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/feature-overview?id=Ka5cgmlybhjk8). Before you begin the development with the SDK, you must register a developer account, create a product, and then complete other required steps on the Tuya Smart Development Platform. This allows you to obtain a key to activate the SDK. For more information, see [Preparation](https://developer.tuya.com/en/docs/app-development/preparation/preparation?id=Ka69nt983bhh5).




## Efficient integration

### Use CocoaPods

Add the following content to the file `Podfile`:

```ruby
platform :ios, '9.0'

target 'your_target_name' do

   pod 'TuyaSmartSweeperKit'
   
end
```

Execute the command `pod update` in the root directory of the project to integrate the SDK.

For more information about CocoaPods, see [CocoaPods Guides](https://guides.cocoapods.org/).



## Initialize the SDK

1. Open the project to apply the setting, `Target => General`, and set `Bundle Identifier` to the value from the Tuya developer center.

2. Import a security image to the project, rename the image as `t_s.bmp` from [Preparation](https://developer.tuya.com/en/docs/app-development/preparation/preparation?id=Ka69nt983bhh5), and then add the image to `Project Setting => Target => Build Phases => Copy Bundle Resources`.

3. Add the following content to the project file `PrefixHeader.pch`：

```objective-c
#import <TuyaSmartSweeperKit/TuyaSmartSweeperKit.h>
```

For a Swift project, add the following content to the `xxx_Bridging-Header.h` file:

```
#import <TuyaSmartSweeperKit/TuyaSmartSweeperKit.h>
```

4. Open the file `AppDelegate.m`，and use the `App Key` and `App Secret` that are obtained from the development platform in the `[AppDelegate application:didFinishLaunchingWithOptions:]` method to initialize SDK:

Objc:

```objc
[[TuyaSmartSDK sharedInstance] startWithAppKey:<#your_app_key#> secretKey:<#your_secret_key#>];
```

Swift:

```swift
 TuyaSmartSDK.sharedInstance()?.start(withAppKey: <#your_app_key#>, secretKey: <#your_secret_key#>)
```

All the preparation steps are finished. You can use the SDK to develop your application.



## References

For more information, see [Tuya Smart Sweeper SDK - iOS](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/extension-sdk/sweeper-sdk/sweeper?id=Ka5vey18r7hnz).



## Changelog

[Changelog](https://developer.tuya.com/en/docs/app-development/ios-app-sdk/extension-sdk/sweeper-sdk/sweeperchangelog?id=Ka5zsjrv5svmm)

