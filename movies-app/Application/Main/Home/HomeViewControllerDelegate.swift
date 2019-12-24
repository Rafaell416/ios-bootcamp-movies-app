//
//  HomeViewControllerDelegate.swift
//  movies-app
//
//  Created by Juanse  on 23/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moviesCell: MoviesTableViewCell = moviesTableView.dequeueReusableCell(withIdentifier: "moviesTableViewCell") as! MoviesTableViewCell
        moviesCell.sectionCollectionView.reloadData()
        return moviesCell
    }
}



