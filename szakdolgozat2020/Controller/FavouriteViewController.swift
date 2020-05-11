//
//  FavouriteViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Favourite page - UIViewController
class FavouriteViewController: UIViewController {
    
    @IBOutlet weak var favouriteSearchBar: UISearchBar!
    @IBOutlet weak var favouriteQrCodeReaderButton: UIButton!
    @IBOutlet weak var favouriteTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                                               = NSLocalizedString("favouritesTab.title", comment: "")
        
        favouriteTableView.backgroundColor                  = .white
        favouriteSearchBar.placeholder                      = NSLocalizedString("favouritesTab.searchBar.placeholder.text", comment: "")
        favouriteSearchBar.searchTextField.backgroundColor  = Colors.appBlue
        favouriteSearchBar.searchTextField.textColor        = .white
        favouriteSearchBar.searchTextField.tintColor        = .white
        favouriteSearchBar.image(for: .search, state: .normal)
    }
}
