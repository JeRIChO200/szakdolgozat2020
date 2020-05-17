//
//  ProtocolViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Protocol page - UIViewController
class ProtocolsViewController: UIViewController, ProvidingInjecting, UITableViewDelegate {
    
    // Args struct
    struct Args {
        var pageSource: PageSource
    }
    
    // Variables
    var protocolArgs = Args(pageSource: .protocols)
    private(set) lazy var protocolProvider: ProtocolProviding = {
        protocolInject(protocolArgs.pageSource)
    }()
    private var filterString: String?
    
    // IB Outlets
    @IBOutlet weak var protocolSearchBar: UISearchBar!
    @IBOutlet weak var protocolTableView: UITableView!
    
    // For grouped list variables
    var protocolsDictionary                                 = [String: [ProtocolModel]]()
    var sectionLetters                                      = [String]()
    var protocols                                           = [ProtocolModel]()
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller.start(with: protocolArgs.pageSource)
        
        self.dismissKey()
        protocolSearchBar.delegate                          = self
        protocolSearchBar.enablesReturnKeyAutomatically     = true
        protocolSearchBar.placeholder                       = NSLocalizedString("protocolsTab.searchBar.placeholder.text", comment: "")
        protocolSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        protocolSearchBar.searchTextField.textColor         = .white
        protocolSearchBar.searchTextField.tintColor         = .white
        protocolSearchBar.image(for: .search, state: .normal)
        
        protocolTableView.sectionIndexBackgroundColor       = .white
        protocolTableView.backgroundColor                   = .white
        protocolTableView.tintColor                         = .red
        protocolTableView.dataSource                        = self
        protocolTableView.delegate                          = self
    }
    
    func selectionCalculator() {
        for protocolItem in protocols {
            let protocolKey = String(protocolItem.name.prefix(1))
            if var protocolValues = protocolsDictionary[protocolKey] {
                protocolValues.append(protocolItem)
                protocolsDictionary[protocolKey] = protocolValues
            } else {
                protocolsDictionary[protocolKey] = [protocolItem]
            }
        }
        
        sectionLetters  = protocolsDictionary.keys.sorted()
    }
    /*
    func calculateDisplayingModel() {
        protocols = protocolsDictionary
    }
    */
}

//MARK: - ProtocolsViewController - #1 Extension: Hide keyboard

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
    
    // run when user choose a letter from keyboard -> searchText changed
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            self.filterString = nil
            return
        }
        
        self.filterString = searchText
        //calculateDisplayingModel()
        protocolTableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        protocolSearchBar.resignFirstResponder()
    }
    
}
