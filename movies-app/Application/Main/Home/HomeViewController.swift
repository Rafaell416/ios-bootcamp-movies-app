//
//  HomeViewController.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Created by Rafael Villarreal on 12/23/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit
import RealmSwift

class HomeViewController: UIViewController {
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    var movieStore = MovieStore()
    let realm = try! Realm()
    let upcommingMoviesList = UpcomingMovies()
    let topRatedMoviesList = TopRatedMovies()
    let playingNowMoviesList = PlayingNowMovies()
            
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        // Do any additional setup after loading the view.
        getUpcommingMovies()
        getTopRatedMovies()
        getPlayingNowMovies()
        
//        try! realm.write {
//            realm.deleteAll()
//        }
        
        print(Realm.Configuration.defaultConfiguration)
    }
    
    func getUpcommingMovies() {
        movieStore.fetchUpcomingMovies { (upcommingMovies) in
            guard let upcommingMoviesDictionary = upcommingMovies else { return }
            for upcommingMovie in upcommingMoviesDictionary {
                self.upcommingMoviesList.movies.append(upcommingMovie)
            }
            try! self.realm.write {
                self.realm.add(self.upcommingMoviesList)
            }
            
        }
    }
    
    func getTopRatedMovies() {
        movieStore.fetchTopRatedMovies { (topRatedMovies) in
            guard let topRatedMoviesDictionary = topRatedMovies else { return }
            for topRatedMovie in topRatedMoviesDictionary {
                self.topRatedMoviesList.movies.append(topRatedMovie)
            }
            try! self.realm.write {
                self.realm.add(self.topRatedMoviesList)
            }
        }
    }
    
    func getPlayingNowMovies() {
        movieStore.fetchPlayingNowMovies { (playingnowMovies) in
            guard let playingNowMoviesDictionary = playingnowMovies else { return }
            for playingNowMovie in playingNowMoviesDictionary {
                self.playingNowMoviesList.movies.append(playingNowMovie)
            }
            try! self.realm.write {
                self.realm.add(self.playingNowMoviesList)
            }
        }
    }
    

    func config() {
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        moviesTableView.estimatedRowHeight = 100
        moviesTableView.separatorStyle = .none
        moviesTableView.allowsSelection = false
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
