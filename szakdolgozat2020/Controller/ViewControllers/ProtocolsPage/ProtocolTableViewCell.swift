//
//  ProtocolTableViewCell.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Protocol Table View Cell
class ProtocolTableViewCell: UITableViewCell {
    
    func display(protocolModel: ProtocolModel) {
        
        textLabel?.text             = protocolModel.name
        textLabel?.numberOfLines    = 2
        
        imageView?.image            = UIImage(systemName: "staroflife.fill")
        tintColor                   = .red
        selectionStyle              = UITableViewCell.SelectionStyle.none
    }
}
