//
//  HospitalsViewController+controlling.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import Foundation
import UIKit

// HospitalsControlling protocol
protocol HospitalsControlling {
    func start()
    func gatherHospitals()
}

// MARK: - HospitalsControlling

// HospitlasControlling protocol for extension implement here
extension HospitalsViewController: HospitalsControlling {
    
    // Variables
    var controller: HospitalsControlling {
        self
    }
    
    // Controlling start here
    func start() {
        presenter.displayTitle()
        gatherHospitals()
    }
    
    // Collect, gather the hospital models here
    func gatherHospitals() {
        hospitalProvider.getHospitals { [weak self] hospitals in
            DispatchQueue.main.sync {
                self?.presenter.display(hospitals)
            }
        }
    }
}
