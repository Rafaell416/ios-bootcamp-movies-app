//
//  MovieDetails.swift
//  movies-app
//
//  Created by Juanse  on 27/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import ObjectMapper
import Foundation
import RealmSwift

class MovieDetails: Object, Mappable {
    
    @objc dynamic var popularity: Float = 0.0
    @objc dynamic var voteCount: Int = 0
    @objc dynamic var video: Bool = false
    @objc dynamic var posterPath: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var adult: Bool = false
    @objc dynamic var backdropPath: String = ""
    @objc dynamic var originalLanguage: String = ""
    @objc dynamic var originalTitle: String = ""
    //var genreIds: [Int] = []
    @objc dynamic var title: String = ""
    @objc dynamic var voteAverage: Float = 0.0
    @objc dynamic var overview: String = ""
    @objc dynamic var releaseDate: String = ""
    @objc dynamic var runtime: Int = 0
    var genres: [Genre] = []
    var cast: [Cast] = []
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        posterPath <- map["poster_path"]
        id <- map["id"]
        backdropPath <- map["backdrop_path"]
        originalTitle <- map["original_title"]
        title <- map["title"]
        voteAverage <- map["vote_average"]
        overview <- map["overview"]
        releaseDate <- map["release_date"]
        runtime <- map["runtime"]
        genres <- map["genres"]
        cast <- map["credits.cast"]
    }
}

