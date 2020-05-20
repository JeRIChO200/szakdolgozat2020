//
//  FavouriteViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import UIKit

// Favourite page - UIViewController
class FavouritesViewController: UIViewController {
    
    // IB Outlets
    @IBOutlet weak var favouriteSearchBar: UISearchBar!
    @IBOutlet weak var favouriteQrCodeReaderButton: UIButton!
    @IBOutlet weak var favouriteTableView: UITableView!
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                                               = NSLocalizedString("favouritesTab.title", comment: "")
        
        self.dismissKey()
        favouriteSearchBar.delegate                         = self
        favouriteSearchBar.enablesReturnKeyAutomatically    = true
        favouriteSearchBar.placeholder                      = NSLocalizedString("favouritesTab.searchBar.placeholder.text", comment: "")
        favouriteSearchBar.searchTextField.backgroundColor  = Colors.appBlue
        favouriteSearchBar.searchTextField.textColor        = .white
        favouriteSearchBar.searchTextField.tintColor        = .white
        favouriteSearchBar.image(for: .search, state: .normal)
        
        favouriteTableView.backgroundColor                  = .white
    }
}

//MARK: - FavouritesViewController - #1 Extension: Hide keyboard

extension FavouritesViewController {
    func dismissKey() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(FavouritesViewController.dismissKeyboard))
        tap.cancelsTouchesInView        = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

//MARK: - UISearchBarDelegate

extension FavouritesViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        favouriteSearchBar.resignFirstResponder()
    }
}
