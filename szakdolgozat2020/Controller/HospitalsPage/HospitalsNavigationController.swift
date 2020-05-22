//
//  HospitalsNavigationController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import UIKit

// HospitalsNavigationController class
class HospitalsNavigationController : UINavigationController {
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // awakeFromNib func
    override func awakeFromNib() {
        super.awakeFromNib()
        tabBarItem.title    = NSLocalizedString("hospitalsTab.title", comment: "")
    }
}
