//
//  MovieDetailCollectionViewCell.swift
//  movies-app
//
//  Created by Juanse  on 25/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MovieDetailCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var castImagevIEW: UIImageView!
    @IBOutlet weak var castNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
        // Initialization code
    }
}
