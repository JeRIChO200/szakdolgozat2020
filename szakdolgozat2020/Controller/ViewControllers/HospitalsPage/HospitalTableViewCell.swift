//
//  HospitalTableViewCell.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

class HospitalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    func display(hospitalModel: HospitalModel) {
        textLabel?.text                         = hospitalModel.name
        textLabel?.numberOfLines                = 0
        imageView?.image                        = UIImage(named: "hospital.fill")
        imageView?.tintColor                    = .red
        tintColor                               = .red
        selectionStyle                          = UITableViewCell.SelectionStyle.none
        detailTextLabel?.text                   = hospitalModel.hospitalSCountry
        detailTextLabel?.textColor              = .red
        
        if hospitalModel.distanceFromUser < 10000 {
            distanceLabel?.text                 = String(Int(hospitalModel.distanceFromUser)) + " m"
        } else {
            distanceLabel?.text                 = String(hospitalModel.distanceFromUser/1000) + " km"
        }
        
    }
}
