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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Always show
        let alert = UIAlertController(title: NSLocalizedString("warningMessage", comment: ""), message: NSLocalizedString("launchMessage", comment: ""), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("accpetedMessage", comment: ""), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
