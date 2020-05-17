//
//  MedicineTableViewCell.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 16..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Medicine Table View Cell
class MedicineTableViewCell: UITableViewCell {
    
    func display(medicineModel: MedicineModel) {
        
        textLabel?.text                 = medicineModel.medicineName + " - " + medicineModel.package
        textLabel?.numberOfLines        = 0
        textLabel?.textColor            = Colors.appBlue
        
        detailTextLabel?.text           = medicineModel.activeSubstanceName
        detailTextLabel?.numberOfLines  = 0
        detailTextLabel?.textColor      = .red
        
        imageView?.image                = UIImage(named: "syringe.fill")
        tintColor                       = .red
        backgroundColor                 = .white
        selectionStyle                  = UITableViewCell.SelectionStyle.none
    }
}
