//
//  MovieDetailViewControllerDelegate.swift
//  movies-app
//
//  Created by Juanse  on 25/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

extension MovieDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieDetailCollectionViewCell = movieCastCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCastCollectionViewCell", for: indexPath) as! MovieDetailCollectionViewCell
        return cell
        
        
    }
}
