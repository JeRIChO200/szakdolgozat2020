//
//  HospitalTableViewCell.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

class HospitalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hospitalIcon: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var secondTitleLabel: UILabel!
    
    func display(hospitalModel: HospitalModel) {
        titleLabel.text                         = hospitalModel.name
        titleLabel.textColor                    = Colors.appBlue
        titleLabel.numberOfLines                = 2
        hospitalIcon.image                        = UIImage(named: "hospital.fill")
        hospitalIcon.tintColor                    = .red
        tintColor                               = .red
        selectionStyle                          = UITableViewCell.SelectionStyle.none
        secondTitleLabel.text                   = hospitalModel.hospitalSCountry
        secondTitleLabel.font                   = UIFont.systemFont(ofSize: 13, weight: .regular)
        secondTitleLabel.textColor              = .red
        
        if hospitalModel.distanceFromUser < 10000 {
            distanceLabel.font                 = UIFont.systemFont(ofSize: 20, weight: .medium)
            distanceLabel.textColor            = .red
            distanceLabel.text                 = String(format: "%.1f", hospitalModel.distanceFromUser) + " m"
        } else {
            distanceLabel.font                 = UIFont.systemFont(ofSize: 17, weight: .regular)
            distanceLabel.textColor            = Colors.appBlue
            distanceLabel.text                 = String(format: "%.1f", hospitalModel.distanceFromUser/1000) + " km"
        }
        
    }
}
