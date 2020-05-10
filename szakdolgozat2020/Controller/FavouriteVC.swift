//
//  FavouriteViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Favourite page - UIViewController
class FavouriteVC: UIViewController {
    
    @IBOutlet weak var favouriteSearchBar: UISearchBar!
    @IBOutlet weak var favouriteQrCodeReaderButton: UIButton!
    @IBOutlet weak var favouriteTableView: FavouriteTV!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favouriteTableView.backgroundColor                  = .white
        favouriteSearchBar.searchTextField.backgroundColor  = Colors.appBlue
        favouriteSearchBar.searchTextField.textColor        = .white
        favouriteSearchBar.searchTextField.tintColor        = .white
        favouriteSearchBar.image(for: .search, state: .normal)
    }
    
}

class FavouriteTV: UITableView {
    
}
