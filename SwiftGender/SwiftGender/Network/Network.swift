//
//  Network.swift
//  SwiftGender
//
//  Created by Angelos Staboulis on 26/3/22.
//

import Foundation
class Network{
    static let shared = Network()
    private init(){}
    func calculateGender(name:String,completion:@escaping (Gender)->()){
            RequestBuilder.shared.parameters = name
            URLSession.shared.dataTask(with: RequestBuilder.shared.request) { data, response, error in
                do{
                    let decoder = try JSONDecoder().decode(Gender.self, from: data!)
                    completion(decoder)
                }
                catch{
                    debugPrint(error)
                }
            }.resume()
    }
}
