//
//  ProtocolViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Protocol page - UIViewController
class ProtocolVC: UIViewController {
    
    @IBOutlet weak var protocolSearchBar: UISearchBar!
    @IBOutlet weak var protocolTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        protocolTableView.backgroundColor                   = .white
        protocolSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        protocolSearchBar.searchTextField.textColor         = .white
        protocolSearchBar.searchTextField.tintColor         = .white
        protocolSearchBar.image(for: .search, state: .normal)
    }
}
