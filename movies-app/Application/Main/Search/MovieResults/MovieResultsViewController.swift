//
//  MovieResultsViewController.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MovieResultsViewController: UIViewController {
    
    @IBOutlet weak var movieResultsCollectionView: UICollectionView!
    
    static var shared: MovieResultsViewController?
    var movies: [Movie] = [] {
        didSet {
            movieResultsCollectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        MovieResultsViewController.shared = self
        // Do any additional setup after loading the view.
    }
    
    func config() {
        
        movieResultsCollectionView.delegate = self
        movieResultsCollectionView.dataSource = self
    }
    
    
}
