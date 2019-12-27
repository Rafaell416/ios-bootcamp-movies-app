//
//  MoviesTableViewCell.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit
import RealmSwift
import Kingfisher

class MoviesTableViewCell: UITableViewCell,  UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var listTypeLabel: UILabel!
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    
    var movies: List<Movie> = List()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.sectionCollectionView.delegate = self
        self.sectionCollectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MoviesCollectionViewCell = sectionCollectionView.dequeueReusableCell(withReuseIdentifier: "sectionCollectionViewCell", for: indexPath) as! MoviesCollectionViewCell
        cell.moviePosterButton.layer.masksToBounds = true
        cell.moviePosterButton.layer.cornerRadius = 10
        cell.movieYearView.layer.cornerRadius = 5
        
        let movie = movies[indexPath.row]
        
        cell.movieTitleLabel.text = movie.title
        cell.movieYearLabel.text = "\(movie.releaseDate.split(separator: "-")[0])"
        cell.movieVoteRatingLabel.text = "\(movie.voteAverage)"
        
        let url = URL(string: "\(Config.largeImageURL)\(movie.posterPath)")
        cell.moviePosterButton.kf.setBackgroundImage(with: url, for: .normal)
        
        cell.tag = movie.id
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        print("movie: \(movie)")
        let movieDetailViewController = MovieDetailViewController()
        movieDetailViewController.movieId = movie.id
        HomeViewController.shared?.navigationController?.pushViewController(movieDetailViewController, animated: true)
    }
    
    
}
