//
//  MedicineViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Medicines page - UIViewController
class MedicineViewController: UIViewController {
    
    @IBOutlet weak var medicineSearchBar: UISearchBar!
    @IBOutlet weak var medicineQrCodeReaderButton: UIButton!
    @IBOutlet weak var medicineTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                                               = NSLocalizedString("medicinesTab.title", comment: "")
        
        medicineTableView.backgroundColor                   = .white
        medicineSearchBar.placeholder                       = NSLocalizedString("medicinesTab.searchBar.placeholder.text", comment: "")
        medicineSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        medicineSearchBar.searchTextField.textColor         = .white
        medicineSearchBar.searchTextField.tintColor         = .white
        medicineSearchBar.image(for: .search, state: .normal)
    }
    
}
