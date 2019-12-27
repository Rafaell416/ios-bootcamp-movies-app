//
//  Config.swift
//  movies-app
//
//  Created by Rafael Villarreal on 12/23/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import Foundation

class Config {
    static let baseURL: String = "https://api.themoviedb.org/3/movie"
    static let apiKey: String = "ee91580503314066ff8ccb125431e5e4"
    
    static let imagesURL: String = "https://image.tmdb.org/t/p"
    
    static let largeSize: String = "original"
    static let smallSize: String = "w500"
    
    static let largeImageURL: String = "\(imagesURL)/\(largeSize)"
    static let smallImageURL: String = "\(imagesURL)/\(smallSize)"
    
}
