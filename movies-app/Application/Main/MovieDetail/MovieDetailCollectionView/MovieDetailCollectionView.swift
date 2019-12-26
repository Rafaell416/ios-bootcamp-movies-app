//
//  TestCollection.swift
//  movies-app
//
//  Created by Juanse  on 25/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MovieDetailCollectionView: UICollectionView {

    override var intrinsicContentSize: CGSize {
        return self.collectionViewLayout.collectionViewContentSize
    }
    
}
