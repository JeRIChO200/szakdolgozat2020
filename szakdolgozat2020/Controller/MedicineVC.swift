//
//  MedicineViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Medicines page - UIViewController
class MedicineVC: UIViewController {
    
    @IBOutlet weak var medicineSearchBar: UISearchBar!
    @IBOutlet weak var medicineQrCodeReaderButton: UIButton!
    @IBOutlet weak var medicineTableView: MedicineTV!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        medicineTableView.backgroundColor                   = .white
        medicineSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        medicineSearchBar.searchTextField.textColor         = .white
        medicineSearchBar.searchTextField.tintColor         = .white
        medicineSearchBar.image(for: .search, state: .normal)
    }
    
}

class MedicineTV: UITableView {
    
}
