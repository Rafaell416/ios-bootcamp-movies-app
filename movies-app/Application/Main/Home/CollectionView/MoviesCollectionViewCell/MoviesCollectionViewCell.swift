//
//  CollectionViewCell.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
