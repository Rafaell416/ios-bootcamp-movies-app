//
//  MovieDetailViewControllerDelegate.swift
//  movies-app
//
//  Created by Juanse  on 25/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit
import Kingfisher

extension MovieDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cast.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieDetailCollectionViewCell = movieCastCollectionView?.dequeueReusableCell(withReuseIdentifier: "movieCastCollectionViewCell", for: indexPath) as! MovieDetailCollectionViewCell
        
        let castPerson = cast[indexPath.row]
        
        let url = URL(string: "\(Config.largeImageURL)\(castPerson.profilePath)")
        cell.castImageView.kf.setImage(with: url)
        cell.castNameLabel.text = castPerson.name
        
        return cell
        
        
    }
}
