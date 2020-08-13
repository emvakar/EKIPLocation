# EKIPLocation

[![Swift Version](https://img.shields.io/badge/Swift-5.2-green.svg)](https://swift.org) ![Cocoapods](https://img.shields.io/cocoapods/v/EKIPLocation.svg) [![Build Status](https://travis-ci.com/emvakar/EKIPLocation.svg?branch=master)](https://travis-ci.com/emvakar/EKIPLocation) [![GitHub license](https://img.shields.io/github/license/emvakar/EKIPLocation.svg)](https://github.com/emvakar/EKIPLocation/blob/master/LICENSE) [![GitHub release](https://img.shields.io/github/release/emvakar/EKIPLocation.svg)](https://GitHub.com/emvakar/EKIPLocation/releases/)


EKIPLocation is a framework created to detecting user location via ip.


![text](https://raw.githubusercontent.com/emvakar/EKIPLocation/master/Previews/location_preview.png "Location information")

## Install

### Swift Package Manager
```swift

    .package(url: "https://github.com/emvakar/EKIPLocation.git", from: "2.0.1")
    
```

### Cocoapods
```ruby

    pod 'EKIPLocation'
    
```
### Manualy

Simply import the framework and add the following code to get started.


## How to use

Empty setup with test parameters simple:

```swift

import EKIPLocation

EKIPLocationManager.shared.fetchLocation { (location) in
    print(location)
}

```

### Response model

```swift

public struct EKPlaceModel {
    
    public var status: String?
    public var country: String?
    public var countryCode: String?
    public var region: String?
    public var regionName: String?
    public var city: String?
    public var zip: String?
    public var lat: Double?
    public var lon: Double?
    public var timezone: String?
    public var isp: String?
    public var org: String?
    public var query: String?
    
}

```
