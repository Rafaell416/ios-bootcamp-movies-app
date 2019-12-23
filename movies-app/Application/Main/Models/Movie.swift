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

public struct Movie: Mappable {
    public init?(map: Map) {}
    public init() {}
        
    public var popularity: Float = 0.0
    public var vote_count: Int = 0
    public var video: Bool = false
    public var poster_path: String = ""
    public var id: Int = 0
    public var adult: Bool = false
    public var backdrop_path: String = ""
    public var original_language: String = ""
    public var original_title: String = ""
    public var genre_ids: [Int] = []
    public var title: String = ""
    public var vote_average: Float = 0.0
    public var overview: String = ""
    public var release_date: String = ""
    
    public mutating func mapping(map: Map) {}
}
