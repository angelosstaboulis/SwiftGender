//
//  Gender.swift
//  SwiftGender
//
//  Created by Angelos Staboulis on 26/3/22.
//

import Foundation
class Gender:Decodable{
    let name:String?
    let gender:String?
    let probability:Float?
    let count:Int?
    enum CodingKeys:String, CodingKey{
        case name
        case gender
        case probability
        case count 
    }
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)!
        self.gender = try container.decodeIfPresent(String.self, forKey: .gender)!
        self.probability = try container.decodeIfPresent(Float.self, forKey: .probability)!
        self.count = try container.decodeIfPresent(Int.self, forKey: .count)!
    }
    
}
