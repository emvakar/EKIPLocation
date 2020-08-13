//
//  JSONPlaceApiResponse.swift
//  EKIPLocation
//
//  Created by Emil Karimov on 18.02.2020.
//  Copyright © 2020 Emil Karimov. All rights reserved.
//

import Foundation

// MARK: - IPPlaceJSONModel

struct IPPlaceJSONModel: Codable {

    var status: String?
    var country: String?
    var countryCode: String?
    var region: String?
    var regionName: String?
    var city: String?
    var zip: String?
    var lat: Double?
    var lon: Double?
    var timezone: String?
    var isp: String?
    var org: String?
    var query: String?

    enum CodingKeys: String, CodingKey {
        case status
        case country
        case countryCode
        case region
        case regionName
        case city
        case zip
        case lat
        case lon
        case timezone
        case isp
        case org
        case query
    }

    func convert() -> EKPlaceModel {
        var model = EKPlaceModel()
        
        model.status = status
        model.country = country
        model.countryCode = countryCode
        model.region = region
        model.regionName = regionName
        model.city = city
        model.zip = zip
        model.lat = lat
        model.lon = lon
        model.timezone = timezone
        model.isp = isp
        model.org = org
        model.query = query
        
        return model

    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
