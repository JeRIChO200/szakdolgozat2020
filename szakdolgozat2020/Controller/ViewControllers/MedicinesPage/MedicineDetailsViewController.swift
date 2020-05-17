//
//  MedicineDetailsVC.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 08..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Medicines details page - UIViewController
class MedicineDetailsViewController: UIViewController {
    
    // Struct
    struct Args {
        var medicineModel: MedicineModel
    }
    
    // Variables
    var medicineDetailArgs = Args(medicineModel: MedicineModel.empty)
    
    // IB Outlets
    @IBOutlet weak var medicineDetailView: UIView!
    @IBOutlet weak var dosageButton: CustomSettingsButton!
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                               = String(medicineDetailArgs.medicineModel.medicineName)
        medicineDetailView.backgroundColor  = .white
    }
    
    // IB Actions
    @IBAction func dosageButtonTapped(_ sender: CustomSettingsButton) {
        
    }
}
