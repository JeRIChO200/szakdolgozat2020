//
//  ProtocolTableViewCell.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

class ProtocolTableViewCell: UITableViewCell {
    
    func display(protocolModel: ProtocolModel) {
        textLabel?.text = protocolModel.name
    }
    
}
