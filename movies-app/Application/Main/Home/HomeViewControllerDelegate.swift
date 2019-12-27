//
//  HomeViewControllerDelegate.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit
import RealmSwift

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 370
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moviesCell: MoviesTableViewCell = moviesTableView.dequeueReusableCell(withIdentifier: "moviesTableViewCell") as! MoviesTableViewCell
        
        switch indexPath.row {
        case 0:
            moviesCell.listTypeLabel.text = "Top Rated Movies"
            moviesCell.movies = self.topRatedMoviesList.movies
        case 1:
            moviesCell.listTypeLabel.text = "Now Playing"
            moviesCell.movies = self.playingNowMoviesList.movies
        case 2:
            moviesCell.listTypeLabel.text = "Upcoming Movies"
            moviesCell.movies = self.upcommingMoviesList.movies
            
        default:
            moviesCell.movies = List()
        }
        
        moviesCell.sectionCollectionView.reloadData()
        
        return moviesCell
    }
    
}



