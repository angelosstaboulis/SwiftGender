//
//  RequestBuilder.swift
//  SwiftGender
//
//  Created by Angelos Staboulis on 26/3/22.
//

import Foundation
class RequestBuilder{
    var urlMain:URL{
        return URL(string: "https://api.genderize.io/?name="+parameters)!
    }
    var request:URLRequest{
        return URLRequest(url: urlMain)
    }
    var _parameters:String!
    var parameters:String{
        get{
            return _parameters
        }
        set(newValue){
            _parameters = newValue
        }
    }
    static let shared = RequestBuilder()
    private init(){}
}
