//
//  SettingViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Setting page - UIViewController
class SettingVC: UIViewController {
    
    // IB Outlets
    @IBOutlet weak var medicinesUpdateButton: CustomSettingsButton!
    @IBOutlet weak var otherOptionsButtion: CustomSettingsButton!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        copyrightLabel.text = ConstantStrings.copyrightString
    }
    
    // IB Actions
    @IBAction func MedicinesUpdateButtonTapped(_ sender: CustomSettingsButton) {
        if 1 == 1 {
            let alert = UIAlertController(title: "Figyelmeztetés!", message: "A gyógyszerek listája hamarosan frissülni fog!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Vissza", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Értettem", style: .destructive, handler: { (action) -> Void in
                self.medicinesUpdateButton.shake()
            }))
            self.present(alert, animated: true, completion: nil)
            
            // Valami történik
        } else {
            // Gomb rezgése
            medicinesUpdateButton.shake()
            
            //
            let alert = UIAlertController(title: "Értesítés!", message: "Gyógyszerek adatbázisa nem tartalmaz frissebb verziót!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Vissza", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func OtherOptionsButtonTapped(_ sender: CustomSettingsButton) {
        
        if 1 == 1 {
            let alert = UIAlertController(title: "Figyelmeztetés!", message: "Új oldalra fog kerülni!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Vissza", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Értettem", style: .destructive, handler: { (action) -> Void in
                self.otherOptionsButtion.shake()
            }))
            self.present(alert, animated: true, completion: nil)
            
            // Valami történik
            
        } else {
            otherOptionsButtion.shake()
            let alert = UIAlertController(title: "Értesítés!", message: "Továbbfejlesztés alatt...", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Vissza", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
