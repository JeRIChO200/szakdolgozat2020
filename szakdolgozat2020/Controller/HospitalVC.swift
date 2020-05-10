//
//  HospitalViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Hospital page - UIViewController
class HospitalVC: UIViewController {
    
    @IBOutlet weak var hospitalTableView: HospitalTV!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hospitalTableView.backgroundColor                  = .white
    }
}

class HospitalTV: UITableView {
    
}
