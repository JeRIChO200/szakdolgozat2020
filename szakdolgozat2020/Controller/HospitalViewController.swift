//
//  HospitalViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Hospital page - UIViewController
class HospitalViewController: UIViewController {
    
    @IBOutlet weak var hospitalTableView: UITableView!
    @IBOutlet weak var informationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                                               = NSLocalizedString("hospitalsTab.title", comment: "")
        
        hospitalTableView.backgroundColor                   = .white
        informationLabel.text                               = NSLocalizedString("hospitalsTab.informationLabel.title", comment: "")
    }
}
