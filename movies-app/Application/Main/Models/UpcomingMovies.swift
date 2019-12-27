//
//  UpcommingMovies.swift
//  movies-app
//
//  Created by Rafael Villarreal on 12/26/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import Foundation
import RealmSwift

class UpcomingMovies: Object {
    let movies = List<Movie>()
}
