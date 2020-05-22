//
//  FavouritesNavigationController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import UIKit

// FavouritesNavigationController class
class FavouritesNavigationController : UINavigationController {
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
    }
       
    // awakeFromNib func
    override func awakeFromNib() {
        super.awakeFromNib()
        tabBarItem.title    = NSLocalizedString("favouritesTab.title", comment: "")
    }
}
