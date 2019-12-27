//
//  MovieDetailViewController.swift
//  movies-app
//
//  Created by Juanse  on 24/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var moviePosterImageView: UIImageView?
    @IBOutlet weak var movieTitleLabel: UILabel?
    @IBOutlet weak var movieStarsLabel: UILabel?
    @IBOutlet weak var movieReleaseYearLabel: UILabel?
    @IBOutlet weak var movieRatingLabel: UILabel?
    @IBOutlet weak var movieDurationLabel: UILabel?
    @IBOutlet weak var movieStorylineLabel: UILabel?
    @IBOutlet weak var movieCastCollectionView: UICollectionView?
    @IBOutlet weak var movieWriterLabel: UILabel?
    @IBOutlet weak var movieDirectorLabel: UILabel?
    @IBOutlet weak var backButton: UIButton?
    
    var movieId: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        print("movieID: \(movieId ?? 0)")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
         navigationController?.setNavigationBarHidden(false, animated: true)
    }
    func config() {
        backButton?.layer.cornerRadius = (backButton?.frame.width ?? 0) / 2
        navigationController?.setNavigationBarHidden(true, animated: true)
        movieCastCollectionView?.delegate = self
        movieCastCollectionView?.dataSource = self
    }

}
