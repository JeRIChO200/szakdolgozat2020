//
//  SettingViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Setting page - UIViewController
class SettingsViewController: UIViewController {
    
    // IB Outlets
    @IBOutlet weak var medicinesUpdateButton: CustomSettingsButton!
    @IBOutlet weak var otherOptionsButton: CustomSettingsButton!
    @IBOutlet weak var contactsLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var versionNumberLabel: UILabel!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                           = NSLocalizedString("settingsTab.title", comment: "")
        medicinesUpdateButton.setButtonTitle(NSLocalizedString("settingsTab.updateMedicinesButton.title", comment: ""))
        otherOptionsButton.setButtonTitle(NSLocalizedString("settingsTab.otherOptionsButton.title", comment: ""))
        contactsLabel.text              = NSLocalizedString("settingsTab.contactsLabel.title", comment: "")
        eMailLabel.text                 = NSLocalizedString("settingsTab.contactsEMailLabel.title", comment: "")
        phoneNumberLabel.text           = NSLocalizedString("settingsTab.contactsPhoneNumberLabel.title", comment: "")
        versionNumberLabel.text         = NSLocalizedString("settingsTab.versionNumberLabel.title", comment: "")
        copyrightLabel.text             = NSLocalizedString("settingsTab.copyRightLabel.title", comment: "")
    }

    // IB Actions
    @IBAction func MedicinesUpdateButtonTapped(_ sender: CustomSettingsButton) {
        if 1 == 1 {
            let alert = UIAlertController(title: NSLocalizedString("warningMessage", comment: ""), message: "A gyógyszerek listája hamarosan frissülni fog!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("cancelMessage", comment: ""), style: .cancel, handler: nil))
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
            let alert = UIAlertController(title: NSLocalizedString("warningMessage", comment: ""), message: "Új oldalra fog kerülni!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("cancelMessage", comment: ""), style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Értettem", style: .destructive, handler: { (action) -> Void in
                self.otherOptionsButton.shake()
            }))
            self.present(alert, animated: true, completion: nil)
            
            // Valami történik
            
        } else {
            otherOptionsButton.shake()
            let alert = UIAlertController(title: "Értesítés!", message: "Továbbfejlesztés alatt...", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Vissza", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
