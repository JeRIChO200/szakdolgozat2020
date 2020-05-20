//
//  MedicinesViewController+controlling.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 16..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol MedicinesControlling {
    func start (with pageSource: PageSource)
    func gatherMedicines()
}

//MARK: - MedicinesControlling

extension MedicinesViewController: MedicinesControlling {
    
    var controller: MedicinesControlling {
        self
    }
    
    func start(with pageSource: PageSource) {
        presenter.displayTitle(by: args.pageSource)
        gatherMedicines()
    }
    
    func gatherMedicines() {
        medicineProvier.getMedicines { [weak self] medicines in
            DispatchQueue.main.sync {
                self?.presenter.display(medicines)
            }
        }
    }
}
