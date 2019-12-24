//
//  MoviesTableViewCell.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell,  UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var sectionCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.sectionCollectionView.delegate = self
        self.sectionCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MoviesCollectionViewCell = sectionCollectionView.dequeueReusableCell(withReuseIdentifier: "sectionCollectionViewCell", for: indexPath) as! MoviesCollectionViewCell
        cell.moviePosterButton.layer.masksToBounds = true
        cell.moviePosterButton.layer.cornerRadius = 20
        cell.movieYearView.layer.cornerRadius = 10
        
        return cell
    }

}
