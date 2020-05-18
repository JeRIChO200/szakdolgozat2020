//
//  FavouritesViewController+controlling.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol FavouritesControlling {
    func start (with pageSource: PageSource)
    func gatherFavourites()
}

//MARK: - FavouritesControlling

extension FavouritesViewController: FavouritesControlling {
    
    var controller: FavouritesControlling {
        self
    }
    
    func start(with pageSource: PageSource) {/*
        presenter.displayTitle(by:favouriteArgs.pageSource)
        gatherMedicines()*/
    }
    
    func gatherFavourites() {
        
    }
}
