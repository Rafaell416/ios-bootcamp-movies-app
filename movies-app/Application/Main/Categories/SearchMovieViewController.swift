//
//  SearchMovieViewController.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class SearchMovieViewController: UIViewController {

    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    let movieCategories = ["Action", "Horror", "Comedy", "Romance", "Thriller", "Drama", "Animated", "Fantasy", "Historical", "Science Fiction", "Adenture", "Documentary", "Fantasy"].sorted()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config() {
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
    }
}

extension UIView {
    func setTransformRotation(toDegrees angleInDegrees: CGFloat) {
        let angleInRadians = angleInDegrees / 180.0 * CGFloat.pi
        let rotation = self.transform.rotated(by: angleInRadians)
        self.transform = rotation
    }
}

