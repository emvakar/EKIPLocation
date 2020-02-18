//
//  EKIPLocation.swift
//  EKIPLocation
//
//  Created by Emil Karimov on 18.02.2020.
//  Copyright © 2020 Emil Karimov. All rights reserved.
//

import Foundation

public protocol EKIPLocationManagerProtocol {

    func fetchLocation(_ completionHandler: @escaping (EKPlaceModel?) -> Void)
    func getCurrentLocation() -> EKPlaceModel?
}

public final class EKIPLocationManager {

    private let url = URL(string: "http://ip-api.com/json")

    private var currentPlace: EKPlaceModel?

    public static let shared = EKIPLocationManager()
    
    private var session = URLSession.shared
}

extension EKIPLocationManager: EKIPLocationManagerProtocol {

    public func fetchLocation(_ completionHandler: @escaping (EKPlaceModel?) -> Void) {
        guard let url = self.url else { return }
        self.session.getLocation(with: url) { (model, response, error) in
            self.currentPlace = model
            completionHandler(model)
        }
    }

    public func getCurrentLocation() -> EKPlaceModel? {
        return self.currentPlace
    }
}
