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
    
    func fetchMovies(_ route: String, _ method: HTTPMethod, _ completion: @escaping(_ movies: [Movie]?) -> Void) {
        let movies = "\(Config.baseURL)\(route)?api_key=\(Config.apiKey)&language=en-US&page=1"
        AF.request(movies, method: method, encoding: JSONEncoding.default).validate().responseJSON { (response) in
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
    
    func fetchMovieDetails(_ id: Int, _ completion: @escaping(_ movies: MovieDetails?) -> Void) {
        let movieDetailsURL = "\(Config.baseURL)/\(id)?api_key=\(Config.apiKey)&append_to_response=credits"
        AF.request(movieDetailsURL, method: .get, encoding: JSONEncoding.default).validate().responseJSON { (response) in
            if let value = response.value as? [String: Any] {
                let result = Mapper<MovieDetails>().map(JSON: value)
                DispatchQueue.main.async {
                    completion(result)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
    
    func fetchMovieByQuery(_ query: String, _ completion: @escaping(_ movies: [Movie]?) -> Void) {
        let movieDetailsURL = "https://api.themoviedb.org/3/search/movie?api_key=\(Config.apiKey)&language=en-US&query=\(query)"
        AF.request(movieDetailsURL, method: .get, encoding: JSONEncoding.default).validate().responseJSON { (response) in
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
