//
//  SearchMoviewViewControllerDelegate.swift
//  movies-app
//
//  Created by Juanse  on 26/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

extension SearchMovieViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CategoriesCollectionViewCell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCategoryCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        cell.layer.cornerRadius = 10
        cell.categoryImageView.setTransformRotation(toDegrees: 30)
        
        let movieCategory = movieCategories[indexPath.row]
        cell.categoryContainerView.layer.backgroundColor = colors[indexPath.row].cgColor
        cell.categoryLabel.text = movieCategory
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  20
        let collectionViewSize = collectionView.frame.size.width - padding

        return CGSize(width: collectionViewSize/2, height: 100)
    }
}
