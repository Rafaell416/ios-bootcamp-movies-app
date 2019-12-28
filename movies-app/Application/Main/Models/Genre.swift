//
//  Genre.swift
//  movies-app
//
//  Created by Juanse  on 27/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import ObjectMapper
import RealmSwift

class Genre: Object, Mappable {
        
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
    }
}
