//
//  MovieDetailViewController.swift
//  movies-app
//
//  Created by Juanse  on 24/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieCastCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        // Do any additional setup after loading the view.
    }
    
    func config() {

        movieCastCollectionView.delegate = self
        movieCastCollectionView.dataSource = self
    }

}
