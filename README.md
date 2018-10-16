# Bloombox for Swift

[![Build Status](https://travis-ci.org/Bloombox/Swift.svg?branch=master)](https://travis-ci.org/Bloombox/Swift) [![Maintainability](https://api.codeclimate.com/v1/badges/726f360df7dbf653931f/maintainability)](https://codeclimate.com/github/Bloombox/Swift/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/726f360df7dbf653931f/test_coverage)](https://codeclimate.com/github/Bloombox/Swift/test_coverage) ![Version](https://img.shields.io/cocoapods/v/Bloombox.svg?style=flat-square) ![Support](https://img.shields.io/cocoapods/p/Bloombox.svg?style=flat-square) ![GitHub](https://img.shields.io/github/license/bloombox/swift.svg?style=flat-square)


Latest Version: `0.1.0`

This Swift package provides an API client for [Bloombox](https://bloombox.io) Cloud APIs. Bloombox APIs are built and served using [gRPC](https://grpc.io) and exposed in client libraries like this one with a more fluid interface to work with. Bloombox systems are [OpenCannabis](https://rfc.opencannabis.info)-compliant, and expose, for instance, an `OpenCannabis` pod that can be used independent of the API client.

You can always opt to use the lower level APIs instead of the client libraries, either via [gRPC+protobuf or JSON-REST](https://console.api.bloombox.cloud).

In terms of iOS land, this library client is built in native Swift, and packaged as a Cocoapod and Swift Package. It is built on [Apple's Protobuf for Swift](https://github.com/apple/swift-protobuf) and the new native [gRPC for Swift](https://github.com/grpc/grpc-swift). It is tested on macOS 11, and iOS 11, although the underlying tools are still under active development, and so YMMV.


### Using the code

Via CocoaPods:
```ruby
project 'YourProject.xcodeproj/'

source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8.0'
inhibit_all_warnings!

target 'YourProject' do
  use_frameworks!

  pod 'OpenCannabis', '~> 0.1.0'
  pod 'Bloombox', '~> 0.1.0'
end
```

Via Swift Package Manager:
```swift
// swift-tools-version:4.0
  
import PackageDescription

let package = Package(
    name: "YourProject",

    /// ...

    dependencies: [
        .package(url: "https://github.com/bloombox/swift", .upToNextMinor(from: "0.1.0"))])
```


### Building the code

Building the code is easy and follows standard Swift packaging conventions. There is also a `Makefile` packaged with various useful routines - you'll use `make` if you are developing on the code.

**Tooling:**
- Xcode 10/Swift 4.2 (for version `0.1.0` and above, previously Xcode 9 / Swift 3.2)
- `make` and other CLI tools for XCode
- Code access to private schema repos for Bloombox


## Services

To get started with API services, setup an API client somewhere in your app:

```swift
    let client: Bloombox = Bloombox(settings: Bloombox.Settings(
      apiKey: "[your-api-key]",
      partner: "[your-partner-id]",
      location: "[your-location-id]"))

```

Information about these settings, in detail:
- *API Key*: Identifies your app/project to the Bloombox API. You can provision these from your Bloombox Dashboard.
- *Partner ID*: Identifies your partner account by a short string code. Can be found in your Bloombox Dashboard.
- *Location ID*: Identifies the partner location for which you want to transact/interact. Can also be found in your Bloombox Dashboard, under the location you wish to use.

*NOTE:* Make sure you retain the `Bloombox` client instance somewhere, or you risk the client (and associated callbacks, etc) getting de-allocated in the middle of a request:


#### Architecture

For nearly every method in the SDK, there is both a sync variant which returns its response directly, and an async variant that responds via callback rather than returning a response directly. When using the synchronous API, errors are thrown, whether they are encountered on the client-side (for instance, a missing API key), or on the server-side (e.g. an authorization failure). The async API, by comparison, only throws client-side errors, and reports server-side errors via the provided callback.

Each service has an accompanying client-side error enumeration, which provides each error that may be thrown for a request before it leaves for the server.

To make cross-location usage easy, most, if not all, methods support overriding the partner, location, or API key on a per-call basis. If you choose not to provide these override values, they're gathered from the `Bloombox.Settings` object instead.


### Shop API

Bloombox Shop services allow interaction with ordering, user enrollment and verification, and more. Here is a sample of checking a shop's "info," which includes its open/closed status, and a few other top-of-the-fold details.

Synchronous:
```swift
  do {
    let info: ShopInfo.Response = try client.shop.info()

    switch status.shopStatus {
    case .open:
      // the shop is open
    case .closed:
      // the shop is entirely closed
    case .deliveryOnly:
      // the shop is only open for delivery
    case .pickupOnly:
      // the shop is only open for pickup
    default: fatalError("unrecognized shop status")
    }

  } catch {
    fatalError("some error occurred: \(error)")
  }
```

Asynchronous:
```swift
  do {
    let call: ShopInfoCall = try client.shop.info() { result, response in
      // result is the call result from gRPC, response is the RPC response, if available
      if let info = response {
        // we have shop info, asynchronously
        switch info.shopStatus {
          // ...
        }

      } else {
        // do something about the error state
        fatalError("some error happened: \(result.statusCode)")
      }
    }

    // the call can be observed or cancelled in async mode
    call.cancel()

  } catch {
    // only client-side errors will show up here (i.e. missing API key, or unresolved partner ID)
    fatalError("client-side error")
  }
```


### Devices API

Performs activation of partner-side devices. For menu tablets and other items, the Devices API provides tools to reach out and discover any assignment and role information bound to the invoking device.

In some circumstances (usually goverened by the assigned device role), a `fingerprint` or `publicKey` value may be required. Device activation may be restricted based on the value of these properties, or, they may need to match the first activation that ever took place for the device in question. Other restrictions may apply to device activation, again, by role, such as enforcement of client-side certificates, IP restrictions, and more.

Synchronous:
```swift
  do {
    let manifest: DeviceActivation.Response = try client.devices.activate(
        deviceSerial: "ABC-123",
        withFingerprint: "[device-hardware-fingerprint]",
        withPublicKey: "[device-public-key]")

  } catch {
    fatalError("some client-side or server-side error occurred: \(error)")
  }
```

Asynchronous:
```swift
  do {
    let manifest: DeviceActivateCall = try client.devices.activate(
        deviceSerial: "ABC-123",
        withFingerprint: "[device-hardware-fingerprint]",
        withPublicKey: "[device-public-key]") { callResult, response in

      // handle the call result and response
      if let manifest = response {
        // the device was able to activate
      } else {
        fatalError("the device was not able to activate: \(call.statusCode)")
      }
    } 
  } catch {
    fatalError("some client-side error occurred: \(error)")
  }
```


### Menu API

Description coming soon.


### Platform API

Description coming soon.


### Telemetry API

The Telemetry API allows you to relay events as they happen, so they may be attributed in user flows and other Bloombox-provided metrics.


## Licensing

Copyright © 2018 Momentum Ideas Co.

A copy of the Apache 2.0 license is enclosed at `LICENSE.txt`, along with additional notices in `NOTICE.txt`. Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the license.

