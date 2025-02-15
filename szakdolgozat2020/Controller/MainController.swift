//
//  ViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import UIKit

// MainContoller class
class MainController: UITabBarController {
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // viewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Show always the starting message
        let alert = UIAlertController(title: NSLocalizedString("warningMessage", comment: ""), message: NSLocalizedString("launchMessage", comment: ""), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("accpetedMessage", comment: ""), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
