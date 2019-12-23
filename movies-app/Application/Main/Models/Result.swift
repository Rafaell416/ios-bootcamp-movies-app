//
//  Result.swift
//  movies-app
//
//  Created by Rafael Villarreal on 12/23/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import ObjectMapper

public struct Result: Mappable {
    public init?(map: Map) {}
    public init() {}
        
    public var result: [Movie] = []
    
    public mutating func mapping(map: Map) {
        result <- map["results"]
    }
}
