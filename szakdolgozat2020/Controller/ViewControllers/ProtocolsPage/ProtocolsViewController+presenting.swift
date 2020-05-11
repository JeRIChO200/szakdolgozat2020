//
//  ProtocolListdisplaying.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol ProtocolsPresenting {
    func displayTitle(by protocolSource: ProtocolSource)
    func display(_ protocols: [ProtocolModel])
}

//MARK: - ProtocolsPresenting

extension ProtocolsViewController: ProtocolsPresenting {
    
    var presenter: ProtocolsPresenting {
        self
    }
    
    func displayTitle(by protocolSource: ProtocolSource) {
        if protocolSource == .protocols {
            title = NSLocalizedString("protocolsTab.title", comment: "")
        }
    }
    
    func display(_ protocols: [ProtocolModel]) {
        self.protocols = protocols
        protocolTableView.reloadData()
    }
}

//MARK: - UITableViewDataSource

extension ProtocolsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        protocols.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = protocolTableView.dequeueReusableCell(withIdentifier: "protocolCell") as? ProtocolTableViewCell else {
            return UITableViewCell()
        }
        
        let protocolModel = protocols[indexPath.row]
        
        cell.display(protocolModel: protocolModel)
        
        return cell
    }
}
