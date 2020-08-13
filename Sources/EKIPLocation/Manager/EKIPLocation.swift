//
//  EKIPLocation.swift
//  EKIPLocation
//
//  Created by Emil Karimov on 18.02.2020.
//  Copyright © 2020 Emil Karimov. All rights reserved.
//

import Foundation

public final class EKIPLocation {

    public static let shared = EKIPLocation()

    private let url = URL(string: "http://ip-api.com/json")
    private var session: URLSession?

    private init() { }

}

// MARK: - Public

extension EKIPLocation {

    public func fetchLocation(_ completionHandler: @escaping (EKPlaceModel?) -> Void) {

        guard let url = url, let session = session else {
            let configuration = URLSessionConfiguration.default
            configuration.timeoutIntervalForRequest = TimeInterval(3)
            configuration.timeoutIntervalForResource = TimeInterval(3)
            let session = URLSession(configuration: configuration)
            self.session = session
            fetchLocation(completionHandler)
            return
        }

        session.getLocation(with: url) { (model, response, error) in
            completionHandler(model)
        }

    }
}
