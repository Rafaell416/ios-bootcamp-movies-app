//
//  Cast.swift
//  movies-app
//
//  Created by Juanse  on 27/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import ObjectMapper
import RealmSwift

class Cast: Object, Mappable {
        
    @objc dynamic var castId: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var profilePath: String = ""
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        castId <- map["cast_id"]
        name <- map["name"]
        profilePath <- map["profile_path"]
    }
}
