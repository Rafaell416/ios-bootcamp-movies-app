//
//  CollectionViewCell.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var moviePosterButton: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearView: UIView!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieCharacteristicsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
