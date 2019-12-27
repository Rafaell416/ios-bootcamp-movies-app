//
//  Movie.swift
//  movies-app
//
//  Created by Rafael Villarreal on 12/23/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//


/*
 {
   "popularity": 658.416,
   "vote_count": 801,
   "video": false,
   "poster_path": "/db32LaOibwEliAmSL2jjDF6oDdj.jpg",
   "id": 181812,
   "adult": false,
   "backdrop_path": "/dCB7d4l0mfpsISZvr6aPE2z5QF6.jpg",
   "original_language": "en",
   "original_title": "Star Wars: The Rise of Skywalker",
   "genre_ids": [
     28,
     12,
     878
   ],
   "title": "Star Wars: The Rise of Skywalker",
   "vote_average": 6.7,
   "overview": "The surviving Resistance faces the First Order once again as the journey of Rey, Finn and Poe Dameron continues. With the power and knowledge of generations behind them, the final battle begins.",
   "release_date": "2019-12-18"
 }
 */

import ObjectMapper
import Foundation
import RealmSwift

class Movie: Object, Mappable {
    
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
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        popularity <- map["popularity"]
        voteCount <- map["vote_count"]
        video <- map["video"]
        posterPath <- map["poster_path"]
        id <- map["id"]
        adult <- map["adult"]
        backdropPath <- map["backdrop_path"]
        originalLanguage <- map["original_language"]
        originalTitle <- map["original_title"]
        title <- map["title"]
        voteAverage <- map["vote_average"]
        overview <- map["overview"]
        releaseDate <- map["release_date"]
    }
}
