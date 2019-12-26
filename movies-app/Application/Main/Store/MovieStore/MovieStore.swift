//
//  MovieStore.swift
//  movies-app
//
//  Created by Rafael Villarreal on 12/23/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import ObjectMapper
import Alamofire

struct MovieStore {
    func fetchUpcomingMovies(_ completion: @escaping(_ movies: [Movie]?) -> Void) {
        let upcomingMovies = "\(Config.baseURL)/upcoming?api_key=\(Config.apiKey)&language=en-US&page=1"
        AF.request(upcomingMovies, method: .get, encoding: JSONEncoding.default).validate().responseJSON { (response) in
            if let value = response.value as? [String: Any] {
                let result = Mapper<Result>().map(JSON: value)
                DispatchQueue.main.async {
                    completion(result?.result)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
    
    func fetchTopRatedMovies(_ completion: @escaping(_ movies: [Movie]?) -> Void) {
        let topRatedMovies = "\(Config.baseURL)/top_rated?api_key=\(Config.apiKey)&language=en-US&page=1"
        AF.request(topRatedMovies, method: .get, encoding: JSONEncoding.default).validate().responseJSON { (response) in
            if let value = response.value as? [String: Any] {
                let result = Mapper<Result>().map(JSON: value)
                DispatchQueue.main.async {
                    completion(result?.result)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
    
    func fetchPlayingNowMovies(_ completion: @escaping(_ movies: [Movie]?) -> Void) {
        let nowPlayingMovies = "\(Config.baseURL)/now_playing?api_key=\(Config.apiKey)&language=en-US&page=1"
        AF.request(nowPlayingMovies, method: .get, encoding: JSONEncoding.default).validate().responseJSON { (response) in
            if let value = response.value as? [String: Any] {
                let result = Mapper<Result>().map(JSON: value)
                DispatchQueue.main.async {
                    completion(result?.result)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
}
