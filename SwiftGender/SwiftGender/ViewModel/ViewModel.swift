//
//  ViewModel.swift
//  SwiftGender
//
//  Created by Angelos Staboulis on 26/3/22.
//

import Foundation
class ViewModel{
    var network:Network!
    init(){
        network = Network.shared
    }
    func calculateGender(name:String,completion:@escaping ((Gender)->())){
        network.calculateGender(name: name) { gender in
            DispatchQueue.main.async{
                completion(gender)
            }
        }
    }
}
