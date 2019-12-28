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

class MoviesTableViewCell: UITableViewCell,  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MoviesCollectionViewCell = sectionCollectionView.dequeueReusableCell(withReuseIdentifier: "sectionCollectionViewCell", for: indexPath) as! MoviesCollectionViewCell
        cell.movieImageView.layer.masksToBounds = true
        cell.movieImageView.layer.cornerRadius = 10
        cell.movieYearView.layer.cornerRadius = 5
        
        let movie = movies[indexPath.row]
        cell.movieTitleLabel.text = movie.title
        cell.movieYearLabel.text = "\(movie.releaseDate.split(separator: "-")[0])"
        cell.movieVoteRatingLabel.text = "\(movie.voteAverage)"
        
        let url = URL(string: "\(Config.largeImageURL)\(movie.posterPath)")
        cell.movieImageView.kf.setImage(with: url)
        
        cell.tag = movie.id
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        let vc = HomeViewController.shared?.storyboard?.instantiateViewController(withIdentifier: "movieDetail") as! MovieDetailViewController
        vc.movieId = movie.id
        HomeViewController.shared?.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 260)
    }
    
    
}
