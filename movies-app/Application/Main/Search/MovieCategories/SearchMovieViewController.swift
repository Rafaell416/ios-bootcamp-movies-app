//
//  SearchMovieViewController.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class SearchMovieViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var movieSearchBar: UISearchBar!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var movieResultsContainer: UIView!
    
    let movieCategories = ["Action", "Horror", "Comedy", "Romance", "Thriller", "Drama", "Animated", "Fantasy", "Historical", "Science Fiction", "Adenture", "Documentary", "Fantasy"].sorted()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config() {
        movieSearchBar.delegate = self
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        navigationController?.setNavigationBarHidden(true, animated: true)
        movieResultsContainer.isHidden = false
        movieSearchBar.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        navigationController?.setNavigationBarHidden(false, animated: false)
        movieResultsContainer.isHidden = true
        movieSearchBar.showsCancelButton = false
    }
}

extension UIView {
    func setTransformRotation(toDegrees angleInDegrees: CGFloat) {
        let angleInRadians = angleInDegrees / 180.0 * CGFloat.pi
        let rotation = self.transform.rotated(by: angleInRadians)
        self.transform = rotation
    }
}

