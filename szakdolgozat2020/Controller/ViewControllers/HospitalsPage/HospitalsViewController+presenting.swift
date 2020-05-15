//
//  HospitalsViewController+presenting.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol HospitalsPresenting {
    func displayTitle(by pageSource: PageSource)
    func display(_ hospitals: [HospitalModel])
}

// MARK: - HospitalsPrenting

extension HospitalsViewController: HospitalsPresenting {
    
    var presenter: HospitalsPresenting {
        self
    }
    
    func displayTitle(by pageSource: PageSource) {
        if pageSource == .hospitals {
            title = NSLocalizedString("hospitalsTab.title", comment: "")
        }
    }
    
    func display(_ hospitals: [HospitalModel]) {
        self.hospitals = hospitals
        hospitalTableView.reloadData()
    }
}

//MARK: - UITableViewDataSource

extension HospitalsViewController: UITableViewDataSource {
    
    // Number of raw in a section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospitals.count
    }
    
    // Displaying a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "hospitalCell") as? HospitalTableViewCell else {
            return UITableViewCell()
        }
        let hospitalModel = hospitals[indexPath.row]
        cell.display(hospitalModel: hospitalModel)
        return cell
    }
}
