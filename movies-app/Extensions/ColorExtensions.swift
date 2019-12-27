//
//  ColorExtensions.swift
//  movies-app
//
//  Created by Juanse  on 27/12/19.
//  Copyright © 2019 Rafael Villarreal. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
