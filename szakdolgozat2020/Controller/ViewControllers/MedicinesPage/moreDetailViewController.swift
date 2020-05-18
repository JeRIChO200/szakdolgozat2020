//
//  moreDetailViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 18..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

class MoreDetailViewController: UIViewController {
    
    // Struct
    struct Args {
        var oneMedicineDetail: String
    }
    
    // Variables
    var medicineDetailArgs = Args(oneMedicineDetail: "")
    
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = medicineDetailArgs.oneMedicineDetail
    }
}
