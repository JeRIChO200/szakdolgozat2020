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
    // IB Outlets
    @IBOutlet weak var protocolSearchBar: UISearchBar!
    @IBOutlet weak var protocolTableView: UITableView!
    
    // For grouped list
    //var protocolsDictionary = [String: [ProtocolModel]]()
    let sectionLetters: [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9"]
    //var sectionLetters = [String]()
    var protocols = [ProtocolModel]()
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //selection()
        controller.start(with: protocolArgs.pageSource)
        
        self.dismissKey()
        protocolSearchBar.delegate                          = self
        protocolSearchBar.enablesReturnKeyAutomatically     = true
        protocolSearchBar.placeholder                       = NSLocalizedString("protocolsTab.searchBar.placeholder.text", comment: "")
        protocolSearchBar.searchTextField.backgroundColor   = Colors.appBlue
        protocolSearchBar.searchTextField.textColor         = .white
        protocolSearchBar.searchTextField.tintColor         = .white
        protocolSearchBar.image(for: .search, state: .normal)
         
        protocolTableView.dataSource                        = self
        protocolTableView.delegate                          = self
        protocolTableView.backgroundColor                   = .white
    }
    /*
    func selection() {
        for protocolItem in protocols {
            let protocolKey = String(protocolItem.name.prefix(1))
            if var protocolValues = protocolsDictionary[protocolKey] {
                protocolValues.append(protocolItem)
                protocolsDictionary[protocolKey] = protocolValues
            } else {
                protocolsDictionary[protocolKey] = [protocolItem]
            }
        }
        
        sectionLetters = [String](protocolsDictionary.keys)
        sectionLetters = sectionLetters.sorted(by: { $0 < $1 })
    }*/
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
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        protocolSearchBar.text = ""
        protocolSearchBar.resignFirstResponder()
    }
    
    
}
