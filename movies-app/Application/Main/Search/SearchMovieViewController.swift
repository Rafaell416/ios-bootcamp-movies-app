//
//  SearchMovieViewController.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class SearchMovieViewController: UIViewController {
    
    @IBOutlet weak var movieSearchBar: UISearchBar!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var movieResultsContainer: UIView!
    
    var movieStore = MovieStore()
    var movies: [Movie] = []
    
    let movieCategories = ["Action", "Horror", "Comedy", "Romance", "Thriller", "Drama", "Animated", "Fantasy", "Historical", "Science Fiction", "Adenture", "Documentary", "Fantasy"].sorted()
    
    let colors = [UIColor(r: 3, g: 94, b: 123), UIColor(r: 193, g: 73, b: 83), UIColor(r: 113, g: 180, b: 141), UIColor(r: 63, g: 136, b: 197), UIColor(r: 65, g: 157, b: 120), UIColor(r: 12, g: 98, b: 145), UIColor(r: 54, g: 38, b: 167), UIColor(r: 227, g: 74, b: 111),UIColor(r: 3, g: 94, b: 123), UIColor(r: 193, g: 73, b: 83), UIColor(r: 113, g: 180, b: 141), UIColor(r: 63, g: 136, b: 197),UIColor(r: 3, g: 94, b: 123), UIColor(r: 193, g: 73, b: 83), UIColor(r: 113, g: 180, b: 141), UIColor(r: 63, g: 136, b: 197)]

    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config() {
        movieSearchBar.delegate = self
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
    }
    
    
}



