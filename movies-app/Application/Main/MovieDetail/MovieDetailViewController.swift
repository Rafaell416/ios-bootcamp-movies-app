//
//  MovieDetailViewController.swift
//  movies-app
//
//  Created by Juanse  on 24/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieDetailScrollView: UIStackView!
    @IBOutlet weak var fetchProgressIndicatorView: UIActivityIndicatorView!
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
    
    var movieId: Int!
    var cast: [Cast] = []
    var movieStore: MovieStore = MovieStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        fetchMovieDetails()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
         navigationController?.setNavigationBarHidden(false, animated: true)
    }
    func config() {
        movieDetailScrollView.isHidden = true
        backButton?.layer.cornerRadius = (backButton?.frame.width ?? 0) / 2
        navigationController?.setNavigationBarHidden(true, animated: true)
        movieCastCollectionView?.delegate = self
        movieCastCollectionView?.dataSource = self
    }
    
    func fetchMovieDetails() {
        self.fetchProgressIndicatorView.startAnimating()
        movieStore.fetchMovieDetails(movieId) { (movie) in
            if let movie = movie {
                self.cast = Array(movie.cast.prefix(10))
                self.movieTitleLabel?.text = movie.title
                self.movieStarsLabel?.text = "\(movie.voteAverage)"
                self.movieReleaseYearLabel?.text = "\(movie.releaseDate.split(separator: "-")[0])"
                self.movieDurationLabel?.text = "\(movie.runtime)min"
                self.movieStorylineLabel?.text = movie.overview
                
                let url = URL(string: "\(Config.largeImageURL)\(movie.posterPath)")
                self.moviePosterImageView?.kf.setImage(with: url)
                self.movieCastCollectionView?.reloadData()
            }
            self.movieDetailScrollView.isHidden = false
            self.fetchProgressIndicatorView.stopAnimating()
        }
    }

}
