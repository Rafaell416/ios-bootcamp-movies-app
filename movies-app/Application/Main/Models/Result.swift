//
//  Result.swift
//  movies-app
//
//  Created by Rafael Villarreal on 12/23/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import ObjectMapper
import RealmSwift

class Result: Object, Mappable {
        
    var result: [Movie] = []
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        result <- map["results"]
    }
}
