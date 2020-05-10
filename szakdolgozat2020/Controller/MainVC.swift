//
//  ViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit
//import ConstantStrings

class MainVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !UserDefaults.standard.bool(forKey: "hasAlreadyLaunched") {
            let alert = UIAlertController(title: "Figyelmeztetés!", message: ConstantStrings.launchingMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Elfogadom", style: .default, handler: { (action) -> Void in
                UserDefaults.standard.set(true, forKey: "hasAlreadyLaunched")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
