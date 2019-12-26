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
    let moviesList = Movies()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        // Do any additional setup after loading the view.
        getUpcommingMovies()
        
        print(Realm.Configuration.defaultConfiguration)
    }
    
    func getUpcommingMovies () {
        movieStore.fetchUpcomingMovies { (movies) in
            guard let moviesDictionary = movies else { return }

            for movie in moviesDictionary {
                self.moviesList.upcommingMovies.append(movie)
            }
            
            try! self.realm.write {
                self.realm.add(self.moviesList)
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
