//
//  MovieResultsViewControllerDelegate.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

extension MovieResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieResultsCollectionViewCell = movieResultsCollectionView.dequeueReusableCell(withReuseIdentifier: "movieResultsCollectionViewCell", for: indexPath) as! MovieResultsCollectionViewCell
        cell.layer.cornerRadius = 10
        
        let movie = movies[indexPath.row]
        let url = URL(string: "\(Config.largeImageURL)\(movie.posterPath)")
        cell.movieResultPosterImageView.kf.setImage(with: url)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  20
        let collectionViewSize = collectionView.frame.size.width - padding
        return CGSize(width: collectionViewSize/3, height: 150)
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let movie = movies[indexPath.row]
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "movieDetail") as! MovieDetailViewController
//        vc.movieId = movie.id
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
    
    
}


