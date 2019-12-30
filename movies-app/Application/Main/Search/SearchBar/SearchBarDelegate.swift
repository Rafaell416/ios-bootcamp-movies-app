//
//  SearchBarDelegate.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

extension SearchMovieViewController: UISearchBarDelegate {
    
    
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        navigationController?.setNavigationBarHidden(true, animated: true)
        movieResultsContainer.isHidden = false
        UIView.animate(withDuration: 0.2, delay: 0, options: .transitionCurlUp, animations: {
            self.view.layoutIfNeeded()
        }) { (isCompleted) in
        }
        self.movieResultsContainer.layoutIfNeeded()
        movieSearchBar.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        searchBar.text = ""
        MovieResultsViewController.shared?.movies = []
        UIView.animate(withDuration: 0.2, delay: 0, options: .transitionCurlUp, animations: {
            self.view.layoutIfNeeded()
        }) { (isCompleted) in
            self.movieResultsContainer.isHidden = true
            self.movieSearchBar.showsCancelButton = false
            
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        movieStore.fetchMovieByQuery(searchBar.text ?? "") { (movies) in
            if let movies = movies {
                MovieResultsViewController.shared?.movies = movies
            }
            
        }
        
    }
}
