//
//  Sport.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import UIKit

enum Sport: String {
    case baseball
    case basketball
    case football
    case hockey
    case soccer
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
