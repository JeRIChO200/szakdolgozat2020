//
//  ProtocolViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Protocol page - UIViewController
class ProtocolsViewController: UIViewController, ProtocolProvidingInjecting {
    
    struct Args {
        var protocolSource: ProtocolSource
    }
    
    var args = Args(protocolSource: .protocols)
    
    // IB Outlets
    @IBOutlet weak var protocolSearchBar: UISearchBar!
    @IBOutlet weak var protocolTableView: UITableView!
    
    private(set) lazy var provider: ProtocolProviding = {
        inject(args.protocolSource)
    }()
    
    // Variables
    var protocols: [ProtocolModel] = []
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller.start(with: args.protocolSource)
        
        self.dismissKey()
        protocolSearchBar.delegate                          = self
        protocolSearchBar.enablesReturnKeyAutomatically     = true
        protocolSearchBar.placeholder                       = NSLocalizedString("protocolsTab.searchBar.placeholder.text", comment: "")
        protocolSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        protocolSearchBar.searchTextField.textColor         = .white
        protocolSearchBar.searchTextField.tintColor         = .white
        protocolSearchBar.image(for: .search, state: .normal)
        
        protocolTableView.backgroundColor                   = .white
    }
}

//MARK: - ProtocolViewController - #1 Extension: Hide keyboard

extension ProtocolsViewController {
    func dismissKey() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ProtocolsViewController.dismissKeyboard))
        tap.cancelsTouchesInView        = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        protocolSearchBar.text          = ""
        view.endEditing(true)
    }
}

//MARK: - UISearchBarDelegate

extension ProtocolsViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        protocolSearchBar.text = ""
        protocolSearchBar.resignFirstResponder()
    }
}
