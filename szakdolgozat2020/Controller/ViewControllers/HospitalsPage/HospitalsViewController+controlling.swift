//
//  HospitalsViewController+controlling.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol HospitalsControlling {
    func start(with pageSource: PageSource)
    func gatherHospitals()
}

// MARK: - HospitalsControlling

extension HospitalsViewController: HospitalsControlling {
    
    var controller: HospitalsControlling {
        self
    }
    
    func start(with pageSource: PageSource) {
        presenter.displayTitle(by: hospitalArgs.pageSource)
        gatherHospitals()
    }
    
    func gatherHospitals() {
        hospitalProvider.getHospitals { [weak self] hospitals in
            DispatchQueue.main.sync {
                self?.presenter.display(hospitals)
            }
        }
    }
}
