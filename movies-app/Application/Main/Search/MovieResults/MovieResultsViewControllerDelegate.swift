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
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieResultsCollectionViewCell = movieResultsCollectionView.dequeueReusableCell(withReuseIdentifier: "movieResultsCollectionViewCell", for: indexPath) as! MovieResultsCollectionViewCell
        
        return cell
    }
    
    
}


