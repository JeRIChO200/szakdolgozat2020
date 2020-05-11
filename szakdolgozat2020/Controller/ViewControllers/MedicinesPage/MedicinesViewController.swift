//
//  MedicineViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Medicines page - UIViewController
class MedicinesViewController: UIViewController {
    
    // IB Outlets
    @IBOutlet weak var medicineSearchBar: UISearchBar!
    @IBOutlet weak var medicineQrCodeReaderButton: UIButton!
    @IBOutlet weak var medicineTableView: UITableView!
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                                               = NSLocalizedString("medicinesTab.title", comment: "")
        
        self.dismissKey()
        medicineSearchBar.delegate                          = self
        medicineSearchBar.enablesReturnKeyAutomatically     = true
        medicineSearchBar.placeholder                       = NSLocalizedString("medicinesTab.searchBar.placeholder.text", comment: "")
        medicineSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        medicineSearchBar.searchTextField.textColor         = .white
        medicineSearchBar.searchTextField.tintColor         = .white
        medicineSearchBar.image(for: .search, state: .normal)
        
        medicineTableView.backgroundColor                   = .white
    }
}

//MARK: - MedicinesViewController - #1 Extension: Hide keyboard

extension MedicinesViewController {
    func dismissKey() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(MedicinesViewController.dismissKeyboard))
        tap.cancelsTouchesInView        = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        medicineSearchBar.text         = ""
        view.endEditing(true)
    }
}

//MARK: - UISearchBarDelegate

extension MedicinesViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        medicineSearchBar.text = ""
        medicineSearchBar.resignFirstResponder()
    }
}
