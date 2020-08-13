//
//  URLSession+Extension.swift
//  EKIPLocation
//
//  Created by Emil Karimov on 18.02.2020.
//  Copyright © 2020 Emil Karimov. All rights reserved.
//

import Foundation

public extension URLSession {

    func getLocation(with url: URL, completionHandler: @escaping (EKPlaceModel?, URLResponse?, Error?) -> Void) {
        iPPlaceJSONModelTask(with: url) { (jsonModel, urlResponse, error) in
            if let jsonModel = jsonModel {
                let model = jsonModel.convert()
                completionHandler(model, urlResponse, error)
                return
            }
            completionHandler(nil, urlResponse, error)
        }.resume()
    }
}

extension URLSession {
    
    private func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    private func iPPlaceJSONModelTask(with url: URL, completionHandler: @escaping (IPPlaceJSONModel?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return codableTask(with: url, completionHandler: completionHandler)
    }

}
